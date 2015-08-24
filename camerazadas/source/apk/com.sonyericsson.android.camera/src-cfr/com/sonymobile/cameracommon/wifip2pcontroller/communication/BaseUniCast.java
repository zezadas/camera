/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.communication;

import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageReceivedCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.util.Util;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

abstract class BaseUniCast {
    private static final boolean IS_DEBUG = false;
    protected static final int SOCKET_CONNECT_TIMEOUT_MS = 3000;
    protected static final int SOCKET_SO_TIMEOUT = 3000;
    private static final String TAG = BaseUniCast.class.getSimpleName();
    protected MessageReceivedCallback mMessageReceivedCallback;
    private ExecutorService mReceiveExecutor;
    private ReceiveTask mReceiveTask;
    private ExecutorService mSubmitExecutor;

    BaseUniCast() {
        this.mSubmitExecutor = this.createIntentionalSubmitterThread();
        this.mMessageReceivedCallback = null;
        this.mReceiveExecutor = null;
    }

    private ExecutorService createIntentionalReceiverThread() {
        return Executors.newSingleThreadExecutor(new Util.IntentionalThreadFactory(this.getReceiverThreadName(), 10));
    }

    private ExecutorService createIntentionalSubmitterThread() {
        return Executors.newSingleThreadExecutor(new Util.IntentionalThreadFactory(this.getSubmitterThreadName(), 10));
    }

    private static void shutdownExecutor(ExecutorService executorService) {
        executorService.shutdown();
        try {
            executorService.awaitTermination(3000, TimeUnit.MILLISECONDS);
            return;
        }
        catch (InterruptedException var0_1) {
            var0_1.printStackTrace();
            return;
        }
    }

    private void stopSubmitTask() {
        if (this.mSubmitExecutor != null) {
            BaseUniCast.shutdownExecutor(this.mSubmitExecutor);
            this.mSubmitExecutor = null;
        }
    }

    protected void executeSubmitTask(Runnable runnable) {
        this.mSubmitExecutor.execute(runnable);
    }

    protected abstract String getReceiverThreadName();

    protected abstract String getSubmitterThreadName();

    protected boolean isReceiveExecutorAvailable() {
        if (!(this.mReceiveExecutor == null || this.mReceiveExecutor.isShutdown())) {
            return true;
        }
        return false;
    }

    protected boolean isSubmitExecutorAvailable() {
        if (!(this.mSubmitExecutor == null || this.mSubmitExecutor.isShutdown())) {
            return true;
        }
        return false;
    }

    public void release() {
        this.stopReceiveMessage();
        this.stopSubmitTask();
        this.mMessageReceivedCallback = null;
    }

    protected void startReceiveMessageImpl(MessageReceivedCallback messageReceivedCallback, ReceiveTask receiveTask) {
        this.mMessageReceivedCallback = messageReceivedCallback;
        this.mReceiveExecutor = this.createIntentionalReceiverThread();
        this.mReceiveTask = receiveTask;
        this.mReceiveExecutor.execute(this.mReceiveTask);
    }

    public void stopReceiveMessage() {
        if (this.mReceiveTask != null) {
            this.mReceiveTask.release();
            this.mReceiveTask = null;
        }
        if (this.mReceiveExecutor != null) {
            BaseUniCast.shutdownExecutor(this.mReceiveExecutor);
            this.mReceiveExecutor = null;
        }
        this.mMessageReceivedCallback = null;
    }

    static interface ReceiveTask
    extends Runnable {
        public void release();
    }

}

