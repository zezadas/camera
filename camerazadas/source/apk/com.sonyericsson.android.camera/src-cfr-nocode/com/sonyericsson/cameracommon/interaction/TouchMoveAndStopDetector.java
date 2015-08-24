/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.os.Handler;
import java.util.Timer;
import java.util.TimerTask;

/*
 * Exception performing whole class analysis.
 */
public class TouchMoveAndStopDetector {
    private static final float DIRECTION_TOLERANCE = 1.0471976f;
    private int TOUCH_STOP_DETECTION_TIMER_INTERVAL;
    private Point mCurrentTouchPos;
    private Point mDownPos;
    private boolean mIsFingerAlreadyMoved;
    private Point mLatestCheckedPos;
    private Point mLatestCheckedTrackVec;
    private TouchStopDetectorListener mListener;
    private Point mPreviousTouchPos;
    private final int mTouchSlop;
    private Point mTouchSlopAreaCenterPos;
    private Timer mTouchStopDetectorTimer;
    private TouchStopDetectorTimerTask mTouchStopDetectorTimerTask;
    private Handler mUiThreadHandler;

    public TouchMoveAndStopDetector(int var1);

    static /* synthetic */ Point access$100(TouchMoveAndStopDetector var0);

    static /* synthetic */ Point access$1000(TouchMoveAndStopDetector var0);

    static /* synthetic */ Point access$200(TouchMoveAndStopDetector var0);

    static /* synthetic */ Point access$300(TouchMoveAndStopDetector var0);

    static /* synthetic */ void access$400(TouchMoveAndStopDetector var0, int var1, int var2, Point var3);

    static /* synthetic */ boolean access$500(TouchMoveAndStopDetector var0);

    static /* synthetic */ void access$600(TouchMoveAndStopDetector var0);

    static /* synthetic */ int access$700(TouchMoveAndStopDetector var0);

    static /* synthetic */ TouchStopDetectorListener access$800(TouchMoveAndStopDetector var0);

    static /* synthetic */ Point access$900(TouchMoveAndStopDetector var0);

    private void killTimer();

    private void onTouchStopDetected();

    private void updateLastCheckedParameters(int var1, int var2, Point var3);

    void release();

    public void setTouchStopDetectorListener(TouchStopDetectorListener var1);

    public void startTouchStopDetection(int var1, int var2);

    public void stopTouchStopDetection();

    public void updateCurrentAndLastPosition(int var1, int var2);

    public void updateCurrentPosition(int var1, int var2);

    public static interface TouchStopDetectorListener {
        public void onSingleTouchMoveDetected(Point var1, Point var2, Point var3);

        public void onSingleTouchStopDetected(Point var1, Point var2, Point var3);
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

