/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.communication;

import com.sonymobile.cameracommon.wifip2pcontroller.communication.BaseUniCast;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageReceivedCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageSubmittedCallback;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class UniCastSession
extends BaseUniCast {
    private static final boolean IS_DEBUG = false;
    private static String RECEIVER_THREAD_NAME;
    private static String SUBMITTER_THREAD_NAME;
    private static final String TAG;

    static;

    public UniCastSession();

    @Override
    protected String getReceiverThreadName();

    @Override
    protected String getSubmitterThreadName();

    public void requestSubmitMessage(byte[] var1, String var2, int var3, MessageSubmittedCallback var4);

    public void startReceiveMessage(int var1, MessageReceivedCallback var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ReceiveTaskImpl
    implements BaseUniCast.ReceiveTask {
        private volatile boolean mIsAlive;
        private final int mTargetPort;
        final /* synthetic */ UniCastSession this$0;

        ReceiveTaskImpl(UniCastSession var1, int var2);

        @Override
        public void release();

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SubmitTask
    implements Runnable {
        private final MessageSubmittedCallback mCallback;
        private final byte[] mMessage;
        private final String mTargetIpAddress;
        private final int mTargetPort;
        final /* synthetic */ UniCastSession this$0;

        public SubmitTask(UniCastSession var1, byte[] var2, String var3, int var4, MessageSubmittedCallback var5);

        @Override
        public void run();
    }

}

