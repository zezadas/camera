/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.event;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.event.EventObserverCallback;
import com.sonymobile.cameracommon.remotedevice.util.Log;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public class EventObserverController {
    private static final boolean IS_DEBUG = false;
    private static final String TAG = EventObserverController.class.getSimpleName();
    private static final int TIMEOUT = 3000;
    private ExecutorService mCallbackExecutor = null;
    private Set<EventObserverCallback> mCallbackSet = new HashSet<EventObserverCallback>();
    private ExecutorService mInternalExecutor = Executors.newSingleThreadExecutor(new InternalExecutorThreadFactory());
    private boolean mIsAlreadyStarted = false;
    private RemoteDevice mTargetRemDev = null;

    public EventObserverController(RemoteDevice remoteDevice, ExecutorService executorService) {
        if (remoteDevice == null || executorService == null) {
            throw new IllegalArgumentException("All arguments must be NOT null.");
        }
        this.mTargetRemDev = remoteDevice;
        this.mCallbackExecutor = executorService;
    }

    /*
     * Exception decompiling
     */
    private void loading() {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    public void addCallback(EventObserverCallback eventObserverCallback) {
        if (!this.mCallbackSet.contains(eventObserverCallback)) {
            this.mCallbackSet.add(eventObserverCallback);
        }
    }

    public void clearCallbacks() {
        this.mCallbackSet.clear();
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
        this.mCallbackSet.clear();
        this.mCallbackExecutor = null;
        this.mTargetRemDev = null;
        this.mInternalExecutor = null;
    }

    public void start() {
        if (this.mIsAlreadyStarted) {
            return;
        }
        this.mIsAlreadyStarted = true;
        this.mInternalExecutor.execute(new Runnable(){

            @Override
            public void run() {
                EventObserverController.this.loading();
            }
        });
    }

    public void stop() {
        this.mIsAlreadyStarted = false;
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

    private static abstract class NotifyCallbackBaseTask
    implements Runnable {
        protected final Set<EventObserverCallback> mCallbacks;

        public NotifyCallbackBaseTask(Set<EventObserverCallback> set) {
            if (set == null) {
                throw new NullPointerException("Callback must not be null.");
            }
            this.mCallbacks = set;
        }

        @Override
        public abstract void run();
    }

    private static class NotifyOnAvailableApiSetChangedTask
    extends NotifyCallbackBaseTask {
        private final Set<String> mNewApiSet;

        public NotifyOnAvailableApiSetChangedTask(Set<EventObserverCallback> set, Set<String> set2) {
            super(set);
            this.mNewApiSet = set2;
        }

        @Override
        public void run() {
            Iterator iterator = this.mCallbacks.iterator();
            while (iterator.hasNext()) {
                ((EventObserverCallback)iterator.next()).onAvailableApiSetChanged(this.mNewApiSet);
            }
        }
    }

    private class NotifyOnCameraStatusChangedTask
    extends NotifyCallbackBaseTask {
        private final String mNewStatus;

        public NotifyOnCameraStatusChangedTask(Set<EventObserverCallback> set, String string) {
            super(set);
            this.mNewStatus = string;
        }

        @Override
        public void run() {
            Iterator iterator = this.mCallbacks.iterator();
            while (iterator.hasNext()) {
                ((EventObserverCallback)iterator.next()).onCameraStatusChanged(this.mNewStatus);
            }
        }
    }

    private static class NotifyOnErrorStoppedTask
    extends NotifyCallbackBaseTask {
        public NotifyOnErrorStoppedTask(Set<EventObserverCallback> set) {
            super(set);
        }

        @Override
        public void run() {
            Iterator iterator = this.mCallbacks.iterator();
            while (iterator.hasNext()) {
                ((EventObserverCallback)iterator.next()).onErrorStopped();
            }
        }
    }

    private class NotifyOnShootModeChangedTask
    extends NotifyCallbackBaseTask {
        private final String mNewShootMode;

        public NotifyOnShootModeChangedTask(Set<EventObserverCallback> set, String string) {
            super(set);
            this.mNewShootMode = string;
        }

        @Override
        public void run() {
            Iterator iterator = this.mCallbacks.iterator();
            while (iterator.hasNext()) {
                ((EventObserverCallback)iterator.next()).onShootModeChanged(this.mNewShootMode);
            }
        }
    }

}

