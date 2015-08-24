/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.communication;

import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageReceivedCallback;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
abstract class BaseUniCast {
    private static final boolean IS_DEBUG = false;
    protected static final int SOCKET_CONNECT_TIMEOUT_MS = 3000;
    protected static final int SOCKET_SO_TIMEOUT = 3000;
    private static final String TAG;
    protected MessageReceivedCallback mMessageReceivedCallback;
    private ExecutorService mReceiveExecutor;
    private ReceiveTask mReceiveTask;
    private ExecutorService mSubmitExecutor;

    static;

    BaseUniCast();

    private ExecutorService createIntentionalReceiverThread();

    private ExecutorService createIntentionalSubmitterThread();

    private static void shutdownExecutor(ExecutorService var0);

    private void stopSubmitTask();

    protected void executeSubmitTask(Runnable var1);

    protected abstract String getReceiverThreadName();

    protected abstract String getSubmitterThreadName();

    protected boolean isReceiveExecutorAvailable();

    protected boolean isSubmitExecutorAvailable();

    public void release();

    protected void startReceiveMessageImpl(MessageReceivedCallback var1, ReceiveTask var2);

    public void stopReceiveMessage();

    static interface ReceiveTask
    extends Runnable {
        public void release();
    }

}

