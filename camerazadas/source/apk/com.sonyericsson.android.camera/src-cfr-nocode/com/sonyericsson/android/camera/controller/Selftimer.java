/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.os.Handler;
import android.os.Message;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.cameracommon.utility.CameraTimer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Selftimer {
    private static final int AF_DELAY_DURATION;
    private static final int SELF_TIMER_CAPTURE_DELAY_DURATION = 200;
    private static final int SELF_TIMER_CONTROL_INTERVAL_MILLIS = 250;
    private static final int[] SELF_TIMER_INTERVALS;
    private static final int[] SELF_TIMER_LEVELS;
    private static final String TAG;
    private final int mCameraType;
    private final CameraFunctions mController;
    private final SelfTimerHandler mHandler;
    private int mMaxDuration;
    private int mOffsetDuration;
    private SelfTimerStartTask mSelfTimerStartTask;
    private ShutterToneGenerator.Type mSoundType;
    private ControllerEventSource mSource;
    private CameraTimer mTimer;

    static;

    public Selftimer(CameraFunctions var1, int var2);

    static /* synthetic */ CameraTimer access$200(Selftimer var0);

    public void countdown(int var1);

    public void finish();

    public void start(ControllerEventSource var1);

    public void stop(boolean var1);

    public void update(int var1, ShutterToneGenerator.Type var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class SelfTimerHandler
    extends Handler {
        private SelfTimerHandler();

        /* synthetic */ SelfTimerHandler( var1);

        @Override
        public void handleMessage(Message var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SelfTimerStartTask
    implements Runnable {
        final /* synthetic */ Selftimer this$0;

        private SelfTimerStartTask(Selftimer var1);

        /* synthetic */ SelfTimerStartTask(Selftimer var1,  var2);

        @Override
        public void run();
    }

}

