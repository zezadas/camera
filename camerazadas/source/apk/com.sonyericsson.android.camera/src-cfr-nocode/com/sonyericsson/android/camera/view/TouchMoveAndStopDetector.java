/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import android.os.Handler;
import android.view.MotionEvent;
import java.util.Timer;
import java.util.TimerTask;

/*
 * Exception performing whole class analysis.
 */
public class TouchMoveAndStopDetector {
    private int TOUCH_STOP_DETECTION_TIMER_INTERVAL;
    private Point mCurrentTouchPos;
    private boolean mIsFingerAlreadyMoved;
    private Point mLastCheckedPos;
    private float mLastCheckedRad;
    private TouchStopDetectorListener mListener;
    private final int mTouchSlop;
    private Point mTouchSlopAreaCenterPos;
    private Timer mTouchStopDetectorTimer;
    private TouchStopDetectorTimerTask mTouchStopDetectorTimerTask;
    private Handler mUiThreadHandler;

    public TouchMoveAndStopDetector(int var1);

    static /* synthetic */ Point access$100(TouchMoveAndStopDetector var0);

    static /* synthetic */ Point access$200(TouchMoveAndStopDetector var0);

    static /* synthetic */ float access$300(TouchMoveAndStopDetector var0);

    static /* synthetic */ void access$400(TouchMoveAndStopDetector var0, int var1, int var2, float var3);

    static /* synthetic */ boolean access$500(TouchMoveAndStopDetector var0);

    static /* synthetic */ void access$600(TouchMoveAndStopDetector var0);

    static /* synthetic */ int access$700(TouchMoveAndStopDetector var0);

    static /* synthetic */ TouchStopDetectorListener access$800(TouchMoveAndStopDetector var0);

    private void onTouchStopDetected();

    private void release();

    private void updateLastCheckedParameters(int var1, int var2, float var3);

    public void setTouchStopDetectorListener(TouchStopDetectorListener var1);

    public void startTouchStopDetection(int var1, int var2);

    public void stopTouchStopDetection();

    public void updateCurrentPosition(MotionEvent var1);

    public static interface TouchStopDetectorListener {
        public void onTouchMoveDetected(MotionEvent var1);

        public void onTouchStopDetected();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class TouchStopDetectorTimerTask
    extends TimerTask {
        final /* synthetic */ TouchMoveAndStopDetector this$0;

        private TouchStopDetectorTimerTask(TouchMoveAndStopDetector var1);

        /* synthetic */ TouchStopDetectorTimerTask(TouchMoveAndStopDetector var1,  var2);

        @Override
        public void run();
    }

}

