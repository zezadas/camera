/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.interaction;

import android.graphics.PointF;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TouchScaleAndRotateDetector {
    private static final int ROTATE_DETECTION_THRESHOLD_DEGREE = 1;
    private float mAxisRotateDeg;
    private PointF mCurrentAxisVec;
    private PointF mCurrentTouchPos0;
    private PointF mCurrentTouchPos1;
    private ScaleAndRotateDetectorListener mListener;
    private float mOriginalAxisLen;
    private PointF mPreviousAxisVec;
    private PointF mPreviousTouchPos0;
    private PointF mPreviousTouchPos1;
    private PointF mTouchVec0;
    private PointF mTouchVec1;

    public TouchScaleAndRotateDetector();

    void release();

    public void setScaleAndRotateDetectorListener(ScaleAndRotateDetectorListener var1);

    public void startScaleAndRotateDetection(PointF var1, PointF var2);

    public void stopScaleAndRotateDetection();

    public void updateCurrentPosition(PointF var1, PointF var2);

    public static interface ScaleAndRotateDetectorListener {
        public void onDoubleTouchRotateDetected(float var1, float var2);

        public void onDoubleTouchScaleDetected(float var1, float var2, float var3);
    }

}

