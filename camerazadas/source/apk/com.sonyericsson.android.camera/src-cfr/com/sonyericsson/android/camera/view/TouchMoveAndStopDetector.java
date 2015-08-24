/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import android.os.Handler;
import android.view.MotionEvent;
import java.util.Timer;
import java.util.TimerTask;

public class TouchMoveAndStopDetector {
    private int TOUCH_STOP_DETECTION_TIMER_INTERVAL = 300;
    private Point mCurrentTouchPos = new Point(0, 0);
    private boolean mIsFingerAlreadyMoved = false;
    private Point mLastCheckedPos = new Point(0, 0);
    private float mLastCheckedRad = 0.0f;
    private TouchStopDetectorListener mListener;
    private final int mTouchSlop;
    private Point mTouchSlopAreaCenterPos = new Point(0, 0);
    private Timer mTouchStopDetectorTimer;
    private TouchStopDetectorTimerTask mTouchStopDetectorTimerTask;
    private Handler mUiThreadHandler = new Handler();

    public TouchMoveAndStopDetector(int n) {
        this.mTouchSlop = n;
    }

    static /* synthetic */ Point access$100(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mCurrentTouchPos;
    }

    static /* synthetic */ Point access$200(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mLastCheckedPos;
    }

    private void onTouchStopDetected() {
        this.mIsFingerAlreadyMoved = false;
        this.mTouchSlopAreaCenterPos.set(this.mCurrentTouchPos.x, this.mCurrentTouchPos.y);
        this.mUiThreadHandler.post(new Runnable(){

            @Override
            public void run() {
                if (TouchMoveAndStopDetector.this.mListener != null) {
                    TouchMoveAndStopDetector.this.mListener.onTouchStopDetected();
                }
            }
        });
    }

    private void release() {
        if (this.mTouchStopDetectorTimer != null) {
            this.mTouchStopDetectorTimer.cancel();
            this.mTouchStopDetectorTimer.purge();
        }
        this.mTouchStopDetectorTimer = null;
        if (this.mTouchStopDetectorTimerTask != null) {
            this.mTouchStopDetectorTimerTask.cancel();
        }
        this.mTouchStopDetectorTimerTask = null;
    }

    private void updateLastCheckedParameters(int n, int n2, float f) {
        this.mLastCheckedPos.set(n, n2);
        this.mLastCheckedRad = f;
    }

    public void setTouchStopDetectorListener(TouchStopDetectorListener touchStopDetectorListener) {
        this.mListener = touchStopDetectorListener;
    }

    public void startTouchStopDetection(int n, int n2) {
        synchronized (this) {
            this.mTouchSlopAreaCenterPos.set(n, n2);
            this.mIsFingerAlreadyMoved = false;
            this.release();
            this.mTouchStopDetectorTimer = new Timer(true);
            this.mTouchStopDetectorTimerTask = new TouchStopDetectorTimerTask();
            this.mTouchStopDetectorTimer.scheduleAtFixedRate((TimerTask)this.mTouchStopDetectorTimerTask, this.TOUCH_STOP_DETECTION_TIMER_INTERVAL, (long)this.TOUCH_STOP_DETECTION_TIMER_INTERVAL);
            return;
        }
    }

    public void stopTouchStopDetection() {
        synchronized (this) {
            this.release();
            this.mCurrentTouchPos.set(0, 0);
            this.mLastCheckedPos.set(0, 0);
            this.mLastCheckedRad = 0.0f;
            return;
        }
    }

    public void updateCurrentPosition(MotionEvent motionEvent) {
        this.mCurrentTouchPos.set((int)motionEvent.getRawX(), (int)motionEvent.getRawY());
        int n = this.mCurrentTouchPos.x - this.mTouchSlopAreaCenterPos.x;
        int n2 = this.mCurrentTouchPos.y - this.mTouchSlopAreaCenterPos.y;
        if (this.mTouchSlop * this.mTouchSlop < n * n + n2 * n2) {
            this.mIsFingerAlreadyMoved = true;
            if (this.mListener != null) {
                this.mListener.onTouchMoveDetected(motionEvent);
            }
        }
    }

    public static interface TouchStopDetectorListener {
        public void onTouchMoveDetected(MotionEvent var1);

        public void onTouchStopDetected();
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
            float f = (float)Math.atan2(n2, n);
            float f2 = TouchMoveAndStopDetector.this.mLastCheckedRad;
            TouchMoveAndStopDetector.this.updateLastCheckedParameters(TouchMoveAndStopDetector.access$100((TouchMoveAndStopDetector)TouchMoveAndStopDetector.this).x, TouchMoveAndStopDetector.access$100((TouchMoveAndStopDetector)TouchMoveAndStopDetector.this).y, f);
            if (!TouchMoveAndStopDetector.this.mIsFingerAlreadyMoved) {
                return;
            }
            if (n == 0 && n2 == 0) {
                TouchMoveAndStopDetector.this.onTouchStopDetected();
                return;
            }
            if (n * n + n2 * n2 >= TouchMoveAndStopDetector.this.mTouchSlop * TouchMoveAndStopDetector.this.mTouchSlop) return;
            if (Math.abs((int)(100.0f * (f - f2))) < 104) return;
            TouchMoveAndStopDetector.this.onTouchStopDetected();
        }
    }

}

