/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.communication;

import com.sonymobile.cameracommon.wifip2pcontroller.communication.BaseUniCast;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageReceivedCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageSubmittedCallback;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;

public class UniCastSession
extends BaseUniCast {
    private static final boolean IS_DEBUG = false;
    private static String RECEIVER_THREAD_NAME;
    private static String SUBMITTER_THREAD_NAME;
    private static final String TAG;

    static {
        TAG = UniCastSession.class.getSimpleName();
        SUBMITTER_THREAD_NAME = "unicast-stream-submit";
        RECEIVER_THREAD_NAME = "unicast-stream-receive";
    }

    @Override
    protected String getReceiverThreadName() {
        return RECEIVER_THREAD_NAME;
    }

    @Override
    protected String getSubmitterThreadName() {
        return SUBMITTER_THREAD_NAME;
    }

    public void requestSubmitMessage(byte[] arrby, String string, int n, MessageSubmittedCallback messageSubmittedCallback) {
        if (string == null) {
            throw new IllegalStateException("Target IP is not detected yet.");
        }
        this.executeSubmitTask(new SubmitTask(arrby, string, n, messageSubmittedCallback));
    }

    public void startReceiveMessage(int n, MessageReceivedCallback messageReceivedCallback) {
        this.startReceiveMessageImpl(messageReceivedCallback, new ReceiveTaskImpl(n));
    }

    private class ReceiveTaskImpl
    implements BaseUniCast.ReceiveTask {
        private volatile boolean mIsAlive;
        private final int mTargetPort;

        ReceiveTaskImpl(int n) {
            this.mIsAlive = true;
            this.mTargetPort = n;
        }

        @Override
        public void release() {
            this.mIsAlive = false;
        }

        /*
         * Exception decompiling
         */
        @Override
        public void run() {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: Started 4 blocks at once
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:369)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:447)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:644)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:727)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
            // org.benf.cfr.reader.Main.doJar(Main.java:126)
            // org.benf.cfr.reader.Main.main(Main.java:178)
            throw new IllegalStateException("Decompilation failed");
        }
    }

    private class SubmitTask
    implements Runnable {
        private final MessageSubmittedCallback mCallback;
        private final byte[] mMessage;
        private final String mTargetIpAddress;
        private final int mTargetPort;

        public SubmitTask(byte[] arrby, String string, int n, MessageSubmittedCallback messageSubmittedCallback) {
            this.mMessage = arrby;
            this.mTargetIpAddress = string;
            this.mTargetPort = n;
            this.mCallback = messageSubmittedCallback;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            block27 : {
                var9_1 = new InetSocketAddress(this.mTargetIpAddress, this.mTargetPort);
                var4_2 = null;
                var8_5 = null;
                var5_6 = null;
                var6_12 = null;
                var7_18 = null;
                var2_22 = false;
                var3_23 = new Socket();
                var3_23.connect(var9_1, 3000);
                var4_2 = new BufferedOutputStream(var3_23.getOutputStream());
                var4_2.write(this.mMessage);
                var4_2.flush();
                var4_2.close();
                var1_29 = true;
                if (var3_23 == null) break block27;
                try {
                    var3_23.close();
                }
                catch (IOException var3_24) {
                    var3_24.printStackTrace();
                }
            }
            if (var4_2 != null) {
                try {
                    var4_2.close();
                }
                catch (IOException var3_25) {
                    var3_25.printStackTrace();
                }
            } else {
                ** GOTO lbl84
            }
            ** GOTO lbl84
            catch (IOException var6_13) {
                block29 : {
                    block28 : {
                        var3_23 = var8_5;
                        ** GOTO lbl49
                        catch (Throwable var7_20) {
                            var4_2 = var3_23;
                            var5_10 = var6_12;
                            var3_23 = var7_20;
                            ** GOTO lbl-1000
                        }
                        catch (Throwable var6_15) {
                            var5_11 /* !! */  = var4_2;
                            var4_2 = var3_23;
                            var3_23 = var6_15;
                            ** GOTO lbl-1000
                        }
                        catch (IOException var6_16) {
                            break block28;
                        }
                        catch (IOException var6_17) {
                            var7_21 /* !! */  = var4_2;
                        }
                    }
                    var4_2 = var3_23;
                    var5_7 = var7_19;
                    try {
                        var6_14.printStackTrace();
                        if (var3_23 == null) break block29;
                    }
                    catch (Throwable var3_28) lbl-1000: // 3 sources:
                    {
                        if (var4_2 != null) {
                            try {
                                var4_2.close();
                            }
                            catch (IOException var4_3) {
                                var4_3.printStackTrace();
                            }
                        }
                        if (var5_9 == null) throw var3_23;
                        try {
                            var5_9.close();
                        }
                        catch (IOException var4_4) {
                            var4_4.printStackTrace();
                            throw var3_23;
                        }
                        throw var3_23;
                    }
                    try {
                        var3_23.close();
                    }
                    catch (IOException var3_27) {
                        var3_27.printStackTrace();
                    }
                }
                var1_29 = var2_22;
                if (var7_19 != null) {
                    try {
                        var7_19.close();
                        var1_29 = var2_22;
                    }
                    catch (IOException var3_26) {
                        var3_26.printStackTrace();
                        var1_29 = var2_22;
                    }
                }
lbl84: // 8 sources:
                if (UniCastSession.this.isSubmitExecutorAvailable() == false) return;
                if (this.mCallback == null) return;
                if (var1_29) {
                    this.mCallback.onSubmitSucceeded();
                    return;
                }
            }
            this.mCallback.onSubmitFailed();
        }
    }

}

