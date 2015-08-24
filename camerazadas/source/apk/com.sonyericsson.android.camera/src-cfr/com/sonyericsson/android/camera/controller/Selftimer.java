/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.os.Handler;
import android.os.Message;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.utility.CameraTimer;

public class Selftimer {
    private static final int AF_DELAY_DURATION;
    private static final int SELF_TIMER_CAPTURE_DELAY_DURATION = 200;
    private static final int SELF_TIMER_CONTROL_INTERVAL_MILLIS = 250;
    private static final int[] SELF_TIMER_INTERVALS;
    private static final int[] SELF_TIMER_LEVELS;
    private static final String TAG;
    private final int mCameraType;
    private final CameraFunctions mController;
    private final SelfTimerHandler mHandler = new SelfTimerHandler();
    private int mMaxDuration;
    private int mOffsetDuration;
    private SelfTimerStartTask mSelfTimerStartTask = null;
    private ShutterToneGenerator.Type mSoundType;
    private ControllerEventSource mSource;
    private CameraTimer mTimer;

    static {
        TAG = Selftimer.class.getSimpleName();
        SELF_TIMER_LEVELS = new int[]{2000, 4000, 10000};
        SELF_TIMER_INTERVALS = new int[]{250, 500, 1000};
        AF_DELAY_DURATION = SELF_TIMER_INTERVALS[0] * 3;
    }

    public Selftimer(CameraFunctions cameraFunctions, int n) {
        this.mController = cameraFunctions;
        this.mCameraType = n;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void countdown(int n) {
        if (this.mCameraType == 1) {
            this.mController.mCameraWindow.startSelfTimerCountDownAnimation();
        }
        int n2 = 0;
        do {
            if (n2 >= SELF_TIMER_LEVELS.length || n <= SELF_TIMER_LEVELS[n2]) {
                int n3 = n2;
                if (n2 >= SELF_TIMER_LEVELS.length) {
                    n3 = SELF_TIMER_LEVELS.length - 1;
                }
                if (n3 == 0) {
                    this.mController.mCameraActivity.getShutterToneGenerator().blink();
                    return;
                } else {
                    if ((n - SELF_TIMER_LEVELS[n3 - 1]) % SELF_TIMER_INTERVALS[n3] != 0) return;
                    {
                        this.mController.mCameraActivity.getShutterToneGenerator().blink();
                        return;
                    }
                }
            }
            ++n2;
        } while (true);
    }

    public void finish() {
        this.mController.mCameraWindow.cancelSelftimer(false);
        Message message = Message.obtain();
        message.what = 3;
        message.obj = this.mSource;
        this.mHandler.sendMessageDelayed(message, 200);
        this.mTimer = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void start(ControllerEventSource controllerEventSource) {
        switch (this.mCameraType) {
            case 1: {
                this.mController.mCameraWindow.startPhotoSelftimer();
                break;
            }
            case 2: {
                this.mController.mCameraWindow.startVideoSelftimer();
            }
        }
        this.mOffsetDuration = this.mController.shouldAfStartAfterSelfTimer(controllerEventSource.mType) ? AF_DELAY_DURATION + 200 : 200;
        this.mSource = controllerEventSource;
        if (this.mSoundType != null) {
            this.mController.mCameraActivity.getShutterToneGenerator().play(this.mSoundType);
        }
        this.mTimer = new CameraTimer(this.mMaxDuration, 250, this.mHandler, "SelfTimer", 0);
        this.mSelfTimerStartTask = new SelfTimerStartTask();
        this.mHandler.post(this.mSelfTimerStartTask);
        this.mController.mEventDispatcher.updateSelfTimerStatus(true);
    }

    public void stop(boolean bl) {
        this.mController.mEventDispatcher.updateSelfTimerStatus(false);
        if (this.mTimer != null) {
            this.mController.mCameraActivity.getShutterToneGenerator().cancelPlayAndBlink();
            this.mController.mCameraWindow.cancelSelftimer(bl);
            this.mTimer.cancel();
            this.mTimer = null;
        }
        this.mHandler.removeMessages(3);
        this.mHandler.removeMessages(0);
        if (this.mSelfTimerStartTask != null) {
            this.mHandler.removeCallbacks(this.mSelfTimerStartTask);
        }
    }

    public void update(int n, ShutterToneGenerator.Type type) {
        this.mMaxDuration = n;
        this.mSoundType = type;
    }

    private static class SelfTimerHandler
    extends Handler {
        private SelfTimerHandler() {
        }

        @Override
        public void handleMessage(Message object) {
            switch (object.what) {
                default: {
                    return;
                }
                case 0: {
                    Executor.sendEvent(ControllerEvent.EV_SELFTIMER_COUNTDOWN, object.arg1, null);
                    return;
                }
                case 1: {
                    Executor.sendEvent(ControllerEvent.EV_SELFTIMER_FINISH, object.arg1, null);
                    return;
                }
                case 3: 
            }
            object = (ControllerEventSource)object.obj;
            Executor.sendEvent(ControllerEvent.EV_SELFTIMER_CAPTURE, (ControllerEventSource)object);
        }
    }

    private class SelfTimerStartTask
    implements Runnable {
        private SelfTimerStartTask() {
        }

        @Override
        public void run() {
            if (Selftimer.this.mTimer != null) {
                Selftimer.this.mTimer.start();
            }
        }
    }

}

