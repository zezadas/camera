/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.os.Handler;
import java.util.Timer;
import java.util.TimerTask;

/*
 * Exception performing whole class analysis.
 */
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

    public CameraTimer(long var1, long var3, Handler var5, String var6, long var7);

    static /* synthetic */ long access$100(CameraTimer var0);

    static /* synthetic */ long access$122(CameraTimer var0, long var1);

    static /* synthetic */ Handler access$200(CameraTimer var0);

    static /* synthetic */ void access$300(CameraTimer var0);

    static /* synthetic */ long access$400(CameraTimer var0);

    private void terminateInnerTimer();

    public void cancel();

    public void start();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SelfTimerTimerTask
    extends TimerTask {
        final /* synthetic */ CameraTimer this$0;

        private SelfTimerTimerTask(CameraTimer var1);

        /* synthetic */ SelfTimerTimerTask(CameraTimer var1,  var2);

        @Override
        public void run();
    }

}

