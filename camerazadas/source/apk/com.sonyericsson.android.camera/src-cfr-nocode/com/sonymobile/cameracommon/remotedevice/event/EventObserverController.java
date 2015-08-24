/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.event;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.event.EventObserverCallback;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class EventObserverController {
    private static final boolean IS_DEBUG = false;
    private static final String TAG;
    private static final int TIMEOUT = 3000;
    private ExecutorService mCallbackExecutor;
    private Set<EventObserverCallback> mCallbackSet;
    private ExecutorService mInternalExecutor;
    private boolean mIsAlreadyStarted;
    private RemoteDevice mTargetRemDev;

    static;

    public EventObserverController(RemoteDevice var1, ExecutorService var2);

    static /* synthetic */ String access$100();

    static /* synthetic */ void access$200(EventObserverController var0);

    private void loading();

    public void addCallback(EventObserverCallback var1);

    public void clearCallbacks();

    public void release();

    public void start();

    public void stop();

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
    private static abstract class NotifyCallbackBaseTask
    implements Runnable {
        protected final Set<EventObserverCallback> mCallbacks;

        public NotifyCallbackBaseTask(Set<EventObserverCallback> var1);

        @Override
        public abstract void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class NotifyOnAvailableApiSetChangedTask
    extends NotifyCallbackBaseTask {
        private final Set<String> mNewApiSet;

        public NotifyOnAvailableApiSetChangedTask(Set<EventObserverCallback> var1, Set<String> var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyOnCameraStatusChangedTask
    extends NotifyCallbackBaseTask {
        private final String mNewStatus;
        final /* synthetic */ EventObserverController this$0;

        public NotifyOnCameraStatusChangedTask(EventObserverController var1, Set<EventObserverCallback> var2, String var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static class NotifyOnErrorStoppedTask
    extends NotifyCallbackBaseTask {
        public NotifyOnErrorStoppedTask(Set<EventObserverCallback> var1);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyOnShootModeChangedTask
    extends NotifyCallbackBaseTask {
        private final String mNewShootMode;
        final /* synthetic */ EventObserverController this$0;

        public NotifyOnShootModeChangedTask(EventObserverController var1, Set<EventObserverCallback> var2, String var3);

        @Override
        public void run();
    }

}

