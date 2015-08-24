/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.photo;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.event.EventObserverCallback;
import com.sonymobile.cameracommon.remotedevice.photo.TakePictureCallback;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TakePictureController {
    private static final boolean IS_DEBUG = false;
    private static final String TAG;
    private static final int TIMEOUT = 3000;
    private TakePictureCallback mCallback;
    private ExecutorService mCallbackExecutor;
    private ExecutorService mInternalExecutor;
    private boolean mIsAlreadyCapturing;
    private MonitoringCallback mMonitoringCallback;
    private RemoteDevice mTargetRemDev;

    static;

    public TakePictureController(RemoteDevice var1, ExecutorService var2);

    static /* synthetic */ String access$100();

    static /* synthetic */ void access$200(TakePictureController var0);

    private void doTakePicture();

    public MonitoringCallback getEventObserverCallback();

    public void release();

    public void takePicture(TakePictureCallback var1);

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
        final /* synthetic */ TakePictureController this$0;

        private MonitoringCallback(TakePictureController var1);

        /* synthetic */ MonitoringCallback(TakePictureController var1,  var2);

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
        protected final TakePictureCallback mCallback;

        public NotifyCallbackBaseTask(TakePictureCallback var1);

        @Override
        public abstract void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class NotifyOnPictureTakenTask
    extends NotifyCallbackBaseTask {
        private final byte[] mJpegBuffer;

        public NotifyOnPictureTakenTask(TakePictureCallback var1, byte[] var2);

        @Override
        public void run();
    }

}

