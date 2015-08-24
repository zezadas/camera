/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.video;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.event.EventObserverCallback;
import com.sonymobile.cameracommon.remotedevice.video.MovieRecCallback;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MovieRecController {
    private static final boolean IS_DEBUG = false;
    private static final String TAG;
    private static final int TIMEOUT = 3000;
    private MovieRecCallback mCallback;
    private ExecutorService mCallbackExecutor;
    private String mCurrentShootMode;
    private State mCurrentState;
    private ExecutorService mInternalExecutor;
    private MonitoringCallback mMonitoringCallback;
    private RemoteDevice mTargetRemDev;

    static;

    public MovieRecController(RemoteDevice var1, ExecutorService var2);

    static /* synthetic */ String access$100();

    static /* synthetic */ String access$1002(MovieRecController var0, String var1);

    static /* synthetic */ void access$200(MovieRecController var0);

    static /* synthetic */ void access$300(MovieRecController var0);

    static /* synthetic */ State access$500(MovieRecController var0);

    static /* synthetic */ MovieRecCallback access$600(MovieRecController var0);

    static /* synthetic */ MovieRecCallback access$602(MovieRecController var0, MovieRecCallback var1);

    static /* synthetic */ ExecutorService access$700(MovieRecController var0);

    static /* synthetic */ void access$800(MovieRecController var0, State var1);

    static /* synthetic */ void access$900(MovieRecController var0);

    private void changeStateTo(State var1);

    private void doStartMovieRec();

    private void doStartMovieRecInternal();

    private void doStopMovieRec();

    public MonitoringCallback getEventObserverCallback();

    public void release();

    public void startMovieRec(MovieRecCallback var1);

    public void stopMovieRec();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class InternalExecutorThreadFactory
    implements ThreadFactory {
        private InternalExecutorThreadFactory();

        /* synthetic */ InternalExecutorThreadFactory( var1);

        @Override
        public Thread newThread(Runnable var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class MonitoringCallback
    implements EventObserverCallback {
        final /* synthetic */ MovieRecController this$0;

        private MonitoringCallback(MovieRecController var1);

        /* synthetic */ MonitoringCallback(MovieRecController var1,  var2);

        @Override
        public void onAvailableApiSetChanged(Set<String> var1);

        @Override
        public void onCameraStatusChanged(String var1);

        @Override
        public void onErrorStopped();

        @Override
        public void onShootModeChanged(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class NotifyCallbackBaseTask
    implements Runnable {
        protected final MovieRecCallback mCallback;

        public NotifyCallbackBaseTask(MovieRecCallback var1);

        @Override
        public abstract void run();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static class NotifyOnMovieRecStartedTask
    extends NotifyCallbackBaseTask {
        public NotifyOnMovieRecStartedTask(MovieRecCallback var1);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static class NotifyOnMovieRecStoppedTask
    extends NotifyCallbackBaseTask {
        public NotifyOnMovieRecStoppedTask(MovieRecCallback var1);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class State
    extends Enum<State> {
        private static final /* synthetic */ State[] $VALUES;
        public static final /* enum */ State IDLE;
        public static final /* enum */ State RECORDING;
        public static final /* enum */ State REC_START_REQUESTED;
        public static final /* enum */ State REC_STOP_REQUESTED;
        public static final /* enum */ State WAIT_FOR_READY_TO_RECORD;

        static;

        private State();

        public static State valueOf(String var0);

        public static State[] values();
    }

}

