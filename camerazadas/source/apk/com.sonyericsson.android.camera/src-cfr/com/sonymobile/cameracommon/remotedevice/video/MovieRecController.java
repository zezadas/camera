/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.video;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.event.EventObserverCallback;
import com.sonymobile.cameracommon.remotedevice.util.Log;
import com.sonymobile.cameracommon.remotedevice.video.MovieRecCallback;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class MovieRecController {
    private static final boolean IS_DEBUG = false;
    private static final String TAG = MovieRecController.class.getSimpleName();
    private static final int TIMEOUT = 3000;
    private MovieRecCallback mCallback = null;
    private ExecutorService mCallbackExecutor = null;
    private String mCurrentShootMode = null;
    private State mCurrentState = State.IDLE;
    private ExecutorService mInternalExecutor = Executors.newSingleThreadExecutor(new InternalExecutorThreadFactory());
    private MonitoringCallback mMonitoringCallback;
    private RemoteDevice mTargetRemDev = null;

    public MovieRecController(RemoteDevice remoteDevice, ExecutorService executorService) {
        this.mMonitoringCallback = new MonitoringCallback();
        if (remoteDevice == null || executorService == null) {
            throw new NullPointerException("All arguments must be NOT null.");
        }
        this.mTargetRemDev = remoteDevice;
        this.mCallbackExecutor = executorService;
    }

    private void changeStateTo(State state) {
        synchronized (this) {
            this.mCurrentState = state;
            return;
        }
    }

    private void doStartMovieRec() {
        if (!"movie".equals(this.mCurrentShootMode)) {
            if (!this.mTargetRemDev.changeToMovieMode()) {
                Log.logError(TAG, "Failed to change to MOVIE mode.");
                return;
            }
            this.changeStateTo(State.WAIT_FOR_READY_TO_RECORD);
            return;
        }
        this.doStartMovieRecInternal();
    }

    private void doStartMovieRecInternal() {
        this.mTargetRemDev.rpcStartMovieRec();
    }

    private void doStopMovieRec() {
        this.mTargetRemDev.rpcStopMovieRec();
    }

    public MonitoringCallback getEventObserverCallback() {
        return this.mMonitoringCallback;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void release() {
        this.mInternalExecutor.shutdown();
        try {
            this.mInternalExecutor.awaitTermination(3000, TimeUnit.MILLISECONDS);
        }
        catch (InterruptedException var1_1) {
            Log.logError(TAG, "Release is interrupted.");
            var1_1.printStackTrace();
        }
        this.mCallback = null;
        this.mCallbackExecutor = null;
        this.mTargetRemDev = null;
        this.mInternalExecutor = null;
    }

    public void startMovieRec(MovieRecCallback movieRecCallback) {
        if (this.mCurrentState != State.IDLE) {
            Log.logError(TAG, "Already on recording sequence.");
            throw new IllegalStateException("Already on recording sequence.");
        }
        this.mCallback = movieRecCallback;
        this.changeStateTo(State.REC_START_REQUESTED);
        this.mInternalExecutor.execute(new Runnable(){

            @Override
            public void run() {
                MovieRecController.this.doStartMovieRec();
            }
        });
    }

    public void stopMovieRec() {
        if (this.mCurrentState != State.RECORDING) {
            Log.logError(TAG, "Already not in recording sequence.");
            throw new IllegalStateException("Already not in recording sequence.");
        }
        this.changeStateTo(State.REC_STOP_REQUESTED);
        this.mInternalExecutor.execute(new Runnable(){

            @Override
            public void run() {
                MovieRecController.this.doStopMovieRec();
            }
        });
    }

    private static final class InternalExecutorThreadFactory
    implements ThreadFactory {
        private InternalExecutorThreadFactory() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            runnable = new Thread(runnable);
            runnable.setName("Th:" + TAG);
            return runnable;
        }
    }

    private class MonitoringCallback
    implements EventObserverCallback {
        private MonitoringCallback() {
        }

        @Override
        public void onAvailableApiSetChanged(Set<String> set) {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onCameraStatusChanged(String string) {
            switch (.$SwitchMap$com$sonymobile$cameracommon$remotedevice$video$MovieRecController$State[MovieRecController.this.mCurrentState.ordinal()]) {
                default: {
                    throw new IllegalStateException("Unexpected state.");
                }
                case 2: {
                    if (!"MovieRecording".equals(string)) return;
                    {
                        MovieRecController.this.mCallbackExecutor.execute(new NotifyOnMovieRecStartedTask(MovieRecController.this.mCallback));
                        MovieRecController.this.changeStateTo(State.RECORDING);
                        return;
                    }
                }
                case 3: {
                    if (!"IDLE".equals(string)) return;
                    {
                        MovieRecController.this.doStartMovieRecInternal();
                        MovieRecController.this.changeStateTo(State.REC_START_REQUESTED);
                        return;
                    }
                }
                case 1: 
                case 4: {
                    return;
                }
                case 5: {
                    if (!"IDLE".equals(string)) return;
                    MovieRecController.this.mCallbackExecutor.execute(new NotifyOnMovieRecStoppedTask(MovieRecController.this.mCallback));
                    MovieRecController.this.mCallback = null;
                    MovieRecController.this.changeStateTo(State.IDLE);
                    return;
                }
            }
        }

        @Override
        public void onErrorStopped() {
        }

        @Override
        public void onShootModeChanged(String string) {
            MovieRecController.this.mCurrentShootMode = string;
        }
    }

    private static abstract class NotifyCallbackBaseTask
    implements Runnable {
        protected final MovieRecCallback mCallback;

        public NotifyCallbackBaseTask(MovieRecCallback movieRecCallback) {
            if (movieRecCallback == null) {
                throw new NullPointerException("Callback must not be null.");
            }
            this.mCallback = movieRecCallback;
        }

        @Override
        public abstract void run();
    }

    private static class NotifyOnMovieRecStartedTask
    extends NotifyCallbackBaseTask {
        public NotifyOnMovieRecStartedTask(MovieRecCallback movieRecCallback) {
            super(movieRecCallback);
        }

        @Override
        public void run() {
            if (this.mCallback != null) {
                this.mCallback.onMovieRecStarted();
            }
        }
    }

    private static class NotifyOnMovieRecStoppedTask
    extends NotifyCallbackBaseTask {
        public NotifyOnMovieRecStoppedTask(MovieRecCallback movieRecCallback) {
            super(movieRecCallback);
        }

        @Override
        public void run() {
            if (this.mCallback != null) {
                this.mCallback.onMovieRecStopped();
            }
        }
    }

    private static enum State {
        IDLE,
        REC_START_REQUESTED,
        WAIT_FOR_READY_TO_RECORD,
        RECORDING,
        REC_STOP_REQUESTED;
        

        private State() {
        }
    }

}

