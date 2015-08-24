/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.graphics.Point;
import android.os.Handler;
import android.view.MotionEvent;
import java.util.Timer;
import java.util.TimerTask;

/*
 * Exception performing whole class analysis.
 */
public class TouchFocusDetector {
    private static final String TAG = "TouchFocusDetector";
    private static final int TOUCH_STOP_DETECTION_TIMER_INTERVAL = 300;
    private final Point mCurrentTouchPos;
    private boolean mIsFingerAlreadyMoved;
    private final Point mLastCheckedPos;
    private float mLastCheckedRad;
    private MotionEventDetectorListener mListener;
    private final int mTouchSlop;
    private final Point mTouchSlopAreaCenterPos;
    private Timer mTouchStopDetectorTimer;
    private TouchStopDetectorTimerTask mTouchStopDetectorTimerTask;
    private final Handler mUiThreadHandler;

    public TouchFocusDetector(int var1);

    static /* synthetic */ Point access$100(TouchFocusDetector var0);

    static /* synthetic */ Point access$200(TouchFocusDetector var0);

    static /* synthetic */ float access$300(TouchFocusDetector var0);

    static /* synthetic */ void access$400(TouchFocusDetector var0, int var1, int var2, float var3);

    static /* synthetic */ boolean access$500(TouchFocusDetector var0);

    static /* synthetic */ void access$600(TouchFocusDetector var0);

    static /* synthetic */ int access$700(TouchFocusDetector var0);

    static /* synthetic */ MotionEventDetectorListener access$800(TouchFocusDetector var0);

    static /* synthetic */ Point access$900(TouchFocusDetector var0);

    private void onTouchStopDetected();

    private void release();

    private void updateLastCheckedParameters(int var1, int var2, float var3);

    public boolean isDragging();

    public boolean onTouch(MotionEvent var1);

    public void setMotionEventDetectorListener(MotionEventDetectorListener var1);

    public void start(MotionEvent var1);

    public void stop();

    public void update(MotionEvent var1);

    public static interface MotionEventDetectorListener {
        public void onTouchMoveDetected(MotionEvent var1);

        public void onTouchStopDetected(int var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class TouchStopDetectorTimerTask
    extends TimerTask {
        final /* synthetic */ TouchFocusDetector this$0;

        private TouchStopDetectorTimerTask(TouchFocusDetector var1);

        /* synthetic */ TouchStopDetectorTimerTask(TouchFocusDetector var1,  var2);

        @Override
        public void run();
    }

}

