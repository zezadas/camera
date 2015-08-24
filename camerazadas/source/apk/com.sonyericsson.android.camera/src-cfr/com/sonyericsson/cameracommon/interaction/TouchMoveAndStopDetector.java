/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.Handler;
import com.sonyericsson.cameracommon.interaction.VectorCalculator;
import java.util.Timer;
import java.util.TimerTask;

public class TouchMoveAndStopDetector {
    private static final float DIRECTION_TOLERANCE = 1.0471976f;
    private int TOUCH_STOP_DETECTION_TIMER_INTERVAL = 200;
    private Point mCurrentTouchPos = new Point(0, 0);
    private Point mDownPos = new Point(0, 0);
    private boolean mIsFingerAlreadyMoved = false;
    private Point mLatestCheckedPos = new Point(0, 0);
    private Point mLatestCheckedTrackVec = new Point(0, 0);
    private TouchStopDetectorListener mListener;
    private Point mPreviousTouchPos = new Point(0, 0);
    private final int mTouchSlop;
    private Point mTouchSlopAreaCenterPos = new Point(0, 0);
    private Timer mTouchStopDetectorTimer;
    private TouchStopDetectorTimerTask mTouchStopDetectorTimerTask;
    private Handler mUiThreadHandler = new Handler();

    public TouchMoveAndStopDetector(int n) {
        this.mTouchSlop = n;
    }

    static /* synthetic */ Point access$200(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mLatestCheckedPos;
    }

    private void killTimer() {
        if (this.mTouchStopDetectorTimer != null) {
            this.mTouchStopDetectorTimer.cancel();
            this.mTouchStopDetectorTimer.purge();
            this.mTouchStopDetectorTimer = null;
        }
        if (this.mTouchStopDetectorTimerTask != null) {
            this.mTouchStopDetectorTimerTask.cancel();
            this.mTouchStopDetectorTimerTask = null;
        }
    }

    private void onTouchStopDetected() {
        this.mIsFingerAlreadyMoved = false;
        this.mTouchSlopAreaCenterPos.set(this.mCurrentTouchPos.x, this.mCurrentTouchPos.y);
        this.mUiThreadHandler.post(new Runnable(){

            @Override
            public void run() {
                if (TouchMoveAndStopDetector.this.mListener != null) {
                    TouchMoveAndStopDetector.this.mListener.onSingleTouchStopDetected(TouchMoveAndStopDetector.this.mCurrentTouchPos, TouchMoveAndStopDetector.this.mPreviousTouchPos, TouchMoveAndStopDetector.this.mDownPos);
                }
            }
        });
    }

    private void updateLastCheckedParameters(int n, int n2, Point point) {
        this.mLatestCheckedPos.set(n, n2);
        this.mLatestCheckedTrackVec.set(point.x, point.y);
    }

    void release() {
        this.killTimer();
        this.mListener = null;
    }

    public void setTouchStopDetectorListener(TouchStopDetectorListener touchStopDetectorListener) {
        this.mListener = touchStopDetectorListener;
    }

    public void startTouchStopDetection(int n, int n2) {
        synchronized (this) {
            this.mDownPos.set(n, n2);
            this.mPreviousTouchPos.set(n, n2);
            this.mTouchSlopAreaCenterPos.set(n, n2);
            this.mIsFingerAlreadyMoved = false;
            this.killTimer();
            this.mTouchStopDetectorTimer = new Timer(true);
            this.mTouchStopDetectorTimerTask = new TouchStopDetectorTimerTask();
            this.mTouchStopDetectorTimer.scheduleAtFixedRate((TimerTask)this.mTouchStopDetectorTimerTask, this.TOUCH_STOP_DETECTION_TIMER_INTERVAL, (long)this.TOUCH_STOP_DETECTION_TIMER_INTERVAL);
            return;
        }
    }

    public void stopTouchStopDetection() {
        synchronized (this) {
            this.killTimer();
            this.mCurrentTouchPos.set(0, 0);
            this.mPreviousTouchPos.set(0, 0);
            this.mLatestCheckedPos.set(0, 0);
            this.mLatestCheckedTrackVec.set(0, 0);
            return;
        }
    }

    public void updateCurrentAndLastPosition(int n, int n2) {
        this.mPreviousTouchPos.set(n, n2);
        this.mCurrentTouchPos.set(n, n2);
    }

    public void updateCurrentPosition(int n, int n2) {
        this.mPreviousTouchPos.set(this.mCurrentTouchPos.x, this.mCurrentTouchPos.y);
        this.mCurrentTouchPos.set(n, n2);
        n = this.mCurrentTouchPos.x - this.mTouchSlopAreaCenterPos.x;
        n2 = this.mCurrentTouchPos.y - this.mTouchSlopAreaCenterPos.y;
        if (this.mTouchSlop * this.mTouchSlop < n * n + n2 * n2) {
            this.mIsFingerAlreadyMoved = true;
            if (this.mListener != null) {
                this.mListener.onSingleTouchMoveDetected(this.mCurrentTouchPos, this.mPreviousTouchPos, this.mDownPos);
            }
        }
    }

    public static interface TouchStopDetectorListener {
        public void onSingleTouchMoveDetected(Point var1, Point var2, Point var3);

        public void onSingleTouchStopDetected(Point var1, Point var2, Point var3);
    }

    private class TouchStopDetectorTimerTask
    extends TimerTask {
        private TouchStopDetectorTimerTask() {
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            int n = TouchMoveAndStopDetector.access$100((TouchMoveAndStopDetector)TouchMoveAndStopDetector.this).x - TouchMoveAndStopDetector.access$200((TouchMoveAndStopDetector)TouchMoveAndStopDetector.this).x;
            int n2 = TouchMoveAndStopDetector.access$100((TouchMoveAndStopDetector)TouchMoveAndStopDetector.this).y - TouchMoveAndStopDetector.access$200((TouchMoveAndStopDetector)TouchMoveAndStopDetector.this).y;
            Point point = new Point(n, n2);
            float f = VectorCalculator.getRadianFrom2Vector(new PointF(point), new PointF(TouchMoveAndStopDetector.this.mLatestCheckedTrackVec));
            TouchMoveAndStopDetector.this.updateLastCheckedParameters(TouchMoveAndStopDetector.access$100((TouchMoveAndStopDetector)TouchMoveAndStopDetector.this).x, TouchMoveAndStopDetector.access$100((TouchMoveAndStopDetector)TouchMoveAndStopDetector.this).y, point);
            if (!TouchMoveAndStopDetector.this.mIsFingerAlreadyMoved) {
                return;
            }
            if (n == 0 && n2 == 0) {
                TouchMoveAndStopDetector.this.onTouchStopDetected();
                return;
            }
            if (n * n + n2 * n2 >= TouchMoveAndStopDetector.this.mTouchSlop * TouchMoveAndStopDetector.this.mTouchSlop) return;
            if (Math.abs(f) < 1.0471976f) return;
            TouchMoveAndStopDetector.this.onTouchStopDetected();
        }
    }

}

