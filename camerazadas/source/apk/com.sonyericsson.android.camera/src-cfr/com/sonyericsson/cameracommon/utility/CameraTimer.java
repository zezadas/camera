/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.os.Handler;
import android.os.Message;
import java.util.Timer;
import java.util.TimerTask;

public class CameraTimer {
    public static final int MSG_CANCEL = 2;
    public static final int MSG_INTERVAL = 0;
    public static final int MSG_POST_TIMEOUT = 3;
    public static final int MSG_TIMEOUT = 1;
    private static final String TAG = "SelfTimer";
    private long mCurTime;
    private long mDelay;
    private Handler mHandler;
    private long mInterval;
    private String mOptionName;
    private Timer mTimer;

    public CameraTimer(long l, long l2, Handler handler, String string, long l3) {
        this.mCurTime = l;
        this.mHandler = handler;
        this.mInterval = l2;
        this.mOptionName = string;
        this.mDelay = l3;
        if (l <= 0 || l2 <= 0 || handler == null || this.mCurTime < this.mInterval || this.mCurTime > Integer.MAX_VALUE) {
            this.mTimer = null;
            return;
        }
        this.mTimer = new Timer(true);
    }

    static /* synthetic */ long access$122(CameraTimer cameraTimer, long l) {
        cameraTimer.mCurTime = l = cameraTimer.mCurTime - l;
        return l;
    }

    private void terminateInnerTimer() {
        synchronized (this) {
            if (this.mTimer != null) {
                this.mTimer.cancel();
                this.mTimer.purge();
                this.mTimer = null;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void cancel() {
        synchronized (this) {
            if (this.mTimer != null) {
                this.terminateInnerTimer();
                Message message = Message.obtain();
                message.arg1 = (int)this.mCurTime;
                message.what = 2;
                this.mHandler.sendMessage(message);
            }
            this.mHandler.removeMessages(1);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void start() {
        synchronized (this) {
            block6 : {
                Timer timer = this.mTimer;
                if (timer != null) break block6;
                do {
                    return;
                    break;
                } while (true);
            }
            this.mTimer.schedule((TimerTask)new SelfTimerTimerTask(), this.mDelay, this.mInterval);
            return;
        }
    }

    private class SelfTimerTimerTask
    extends TimerTask {
        private SelfTimerTimerTask() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void run() {
            if (CameraTimer.this.mCurTime > 0) {
                Message message = Message.obtain();
                message.arg1 = (int)CameraTimer.this.mCurTime;
                message.what = 0;
                CameraTimer.this.mHandler.sendMessage(message);
            } else {
                Message message = Message.obtain();
                message.arg1 = (int)CameraTimer.this.mCurTime;
                message.what = 1;
                CameraTimer.this.mHandler.sendMessage(message);
                CameraTimer.this.terminateInnerTimer();
            }
            CameraTimer.access$122(CameraTimer.this, CameraTimer.this.mInterval);
        }
    }

}

