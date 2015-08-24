/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.interaction;

import android.graphics.PointF;
import com.sonyericsson.cameracommon.interaction.VectorCalculator;

public class TouchScaleAndRotateDetector {
    private static final int ROTATE_DETECTION_THRESHOLD_DEGREE = 1;
    private float mAxisRotateDeg = 0.0f;
    private PointF mCurrentAxisVec = new PointF(0.0f, 0.0f);
    private PointF mCurrentTouchPos0 = new PointF(0.0f, 0.0f);
    private PointF mCurrentTouchPos1 = new PointF(0.0f, 0.0f);
    private ScaleAndRotateDetectorListener mListener;
    private float mOriginalAxisLen = 0.0f;
    private PointF mPreviousAxisVec;
    private PointF mPreviousTouchPos0;
    private PointF mPreviousTouchPos1;
    private PointF mTouchVec0 = new PointF(0.0f, 0.0f);
    private PointF mTouchVec1 = new PointF(0.0f, 0.0f);

    void release() {
        this.mListener = null;
    }

    public void setScaleAndRotateDetectorListener(ScaleAndRotateDetectorListener scaleAndRotateDetectorListener) {
        this.mListener = scaleAndRotateDetectorListener;
    }

    public void startScaleAndRotateDetection(PointF pointF, PointF pointF2) {
        this.mPreviousTouchPos0 = new PointF(pointF.x, pointF.y);
        this.mPreviousTouchPos1 = new PointF(pointF2.x, pointF2.y);
        this.mPreviousAxisVec = new PointF(pointF2.x - pointF.x, pointF2.y - pointF.y);
        this.mOriginalAxisLen = this.mPreviousAxisVec.length();
    }

    public void stopScaleAndRotateDetection() {
        this.mCurrentTouchPos0.set(0.0f, 0.0f);
        this.mCurrentTouchPos1.set(0.0f, 0.0f);
        this.mPreviousTouchPos0 = null;
        this.mPreviousTouchPos1 = null;
        this.mTouchVec0.set(0.0f, 0.0f);
        this.mTouchVec1.set(0.0f, 0.0f);
        this.mPreviousAxisVec = null;
        this.mCurrentAxisVec.set(0.0f, 0.0f);
        this.mAxisRotateDeg = 0.0f;
        this.mOriginalAxisLen = 0.0f;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateCurrentPosition(PointF pointF, PointF pointF2) {
        float f;
        float f2;
        this.mCurrentTouchPos0.set(pointF);
        this.mCurrentTouchPos1.set(pointF2);
        this.mTouchVec0.set(this.mCurrentTouchPos0.x - this.mPreviousTouchPos0.x, this.mCurrentTouchPos0.y - this.mPreviousTouchPos0.y);
        this.mTouchVec1.set(this.mCurrentTouchPos1.x - this.mPreviousTouchPos1.x, this.mCurrentTouchPos1.y - this.mPreviousTouchPos1.y);
        this.mCurrentAxisVec.set(this.mCurrentTouchPos1.x - this.mCurrentTouchPos0.x, this.mCurrentTouchPos1.y - this.mCurrentTouchPos0.y);
        if (VectorCalculator.isSquare(this.mCurrentAxisVec, this.mTouchVec0) && VectorCalculator.isSquare(this.mCurrentAxisVec, this.mTouchVec1)) {
            f2 = VectorCalculator.getRadianFrom2Vector(this.mPreviousAxisVec, this.mCurrentAxisVec);
            f = 0.0f <= this.mPreviousAxisVec.x * this.mCurrentAxisVec.y - this.mCurrentAxisVec.x * this.mPreviousAxisVec.y ? 1.0f : -1.0f;
            f = (float)((double)(360.0f * f2 / 2.0f) / 3.141592653589793 * (double)f);
            f2 = this.mAxisRotateDeg;
            this.mAxisRotateDeg+=f;
            if (1.0f <= Math.abs(this.mAxisRotateDeg - f2)) {
                this.mListener.onDoubleTouchRotateDetected(this.mAxisRotateDeg, this.mAxisRotateDeg - f2);
            }
        }
        if (VectorCalculator.isParallel(this.mCurrentAxisVec, this.mTouchVec0) && VectorCalculator.isParallel(this.mCurrentAxisVec, this.mTouchVec1)) {
            f = this.mCurrentAxisVec.length();
            f2 = this.mPreviousAxisVec.length();
            this.mListener.onDoubleTouchScaleDetected(f, f2, this.mOriginalAxisLen);
        }
        this.mPreviousAxisVec.set(this.mCurrentAxisVec);
        this.mPreviousTouchPos0.set(this.mCurrentTouchPos0);
        this.mPreviousTouchPos1.set(this.mCurrentTouchPos1);
    }

    public static interface ScaleAndRotateDetectorListener {
        public void onDoubleTouchRotateDetected(float var1, float var2);

        public void onDoubleTouchScaleDetected(float var1, float var2, float var3);
    }

}

