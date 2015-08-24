/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.communication;

import com.sonymobile.cameracommon.wifip2pcontroller.communication.BaseUniCast;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageReceivedCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageSubmittedCallback;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;

public class UniCastStream
extends BaseUniCast {
    private static final boolean IS_DEBUG = false;
    private static String RECEIVER_THREAD_NAME;
    private static String SUBMITTER_THREAD_NAME;
    private static final String TAG;

    static {
        TAG = UniCastStream.class.getSimpleName();
        SUBMITTER_THREAD_NAME = "unicast-session-submit";
        RECEIVER_THREAD_NAME = "unicast-session-receive";
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
        this.executeSubmitTask(new SubmitTask(arrby, string, n, messageSubmittedCallback));
    }

    public void startReceiveMessage(int n, int n2, MessageReceivedCallback messageReceivedCallback) {
        this.startReceiveMessageImpl(messageReceivedCallback, new ReceiveTaskImpl(n, n2));
    }

    private class ReceiveTaskImpl
    implements BaseUniCast.ReceiveTask {
        private volatile boolean mIsAlive;
        private final int mReceivedDataSize;
        private final int mTargetPort;

        ReceiveTaskImpl(int n, int n2) {
            this.mIsAlive = true;
            this.mTargetPort = n;
            this.mReceivedDataSize = n2;
        }

        @Override
        public void release() {
            this.mIsAlive = false;
        }

        /*
         * Unable to fully structure code
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            var4_1 = new byte[this.mReceivedDataSize];
            var7_7 = new DatagramPacket((byte[])var4_1, var4_1.length);
            var4_1 = null;
            block11 : while (this.mIsAlive != false) {
                var6_12 = var4_1;
                var5_11 = new DatagramSocket(this.mTargetPort);
                try {
                    var5_11.setReuseAddress(true);
                    var5_11.setSoTimeout(3000);
                    ** while (var3_10 = this.mIsAlive)
                }
                catch (Throwable var4_6) {
                    var6_12 = var5_11;
                    ** continue;
                }
lbl-1000: // 1 sources:
                {
                    var5_11.receive(var7_7);
                    var4_1 = var7_7.getData();
                    var1_8 = var7_7.getLength();
                    var2_9 = var7_7.getOffset();
                    var6_12 = var7_7.getAddress().getHostAddress();
                    var8_14 = UniCastStream.this.mMessageReceivedCallback;
                    if (var8_14 == null) continue;
                    try {
                        var9_15 = new byte[var1_8];
                        System.arraycopy(var4_1, var2_9, var9_15, 0, var1_8);
                        var8_14.onMessageReceived(var9_15, (String)var6_12);
                        continue;
                    }
                    catch (IOException var4_2) lbl-1000: // 2 sources:
                    {
                        var6_12 = var5_11;
                        var4_1.printStackTrace();
                        var4_1 = var5_11;
                        if (var5_11 == null) continue block11;
                        var5_11.close();
                        var4_1 = null;
                        continue block11;
                    }
                    {
                        catch (SocketTimeoutException var4_3) {
                            continue;
                        }
                    }
                }
lbl37: // 1 sources:
                if (var5_11 != null) {
                    var5_11.close();
                    var4_1 = null;
                    continue;
                } else {
                    ** GOTO lbl53
                }
                {
                    catch (Throwable var4_4) lbl-1000: // 2 sources:
                    {
                        do {
                            if (var6_12 == null) throw var4_5;
                            var6_12.close();
                            throw var4_5;
                            break;
                        } while (true);
                    }
                }
                catch (IOException var6_13) {
                    var5_11 = var4_1;
                    var4_1 = var6_13;
                    ** GOTO lbl-1000
                }
lbl53: // 2 sources:
                var4_1 = var5_11;
            }
        }
    }

    private class SubmitTask
    implements Runnable {
        private final MessageSubmittedCallback mCallback;
        private final byte[] mMessage;
        private final String mTargetIpAddress;
        private final int mTargetPort;

        public SubmitTask(byte[] arrby, String string, int n, MessageSubmittedCallback messageSubmittedCallback) {
            if (arrby == null) {
                throw new IllegalStateException("Message buffer must not be NULL.");
            }
            if (string == null) {
                throw new IllegalStateException("Target IP is not detected yet.");
            }
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
            var5_1 = new InetSocketAddress(this.mTargetIpAddress, this.mTargetPort);
            var4_8 = null;
            var6_9 = null;
            var2_10 = false;
            var3_11 = new DatagramSocket(0);
            var4_8 = new DatagramPacket(this.mMessage, this.mMessage.length, var5_1);
            var3_11.send((DatagramPacket)var4_8);
            var1_13 = true;
            if (var3_11 != null) {
                var3_11.close();
            } else {
                ** GOTO lbl41
            }
            ** GOTO lbl41
            catch (IOException var5_2) {
                block14 : {
                    block13 : {
                        var3_11 = var6_9;
                        ** GOTO lbl29
                        catch (Throwable var5_4) {
                            var4_8 = var3_11;
                            var3_11 = var5_4;
                            ** GOTO lbl-1000
                        }
                        catch (Throwable var5_5) {
                            var4_8 = var3_11;
                            var3_11 = var5_5;
                            ** GOTO lbl-1000
                        }
                        catch (IOException var5_6) {
                            break block13;
                        }
                        catch (IOException var5_7) {}
                    }
                    var4_8 = var3_11;
                    try {
                        var5_3.printStackTrace();
                        var1_13 = var2_10;
                        if (var3_11 == null) break block14;
                        var3_11.close();
                        var1_13 = var2_10;
                    }
                    catch (Throwable var3_12) lbl-1000: // 3 sources:
                    {
                        if (var4_8 == null) throw var3_11;
                        var4_8.close();
                        throw var3_11;
                    }
                }
                if (this.mCallback == null) return;
                if (var1_13) {
                    this.mCallback.onSubmitSucceeded();
                    return;
                }
            }
            this.mCallback.onSubmitFailed();
        }
    }

}

