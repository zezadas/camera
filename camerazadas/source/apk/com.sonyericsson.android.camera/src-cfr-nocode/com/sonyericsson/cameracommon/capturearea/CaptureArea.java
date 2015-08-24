/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capturearea;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector;

/*
 * Exception performing whole class analysis.
 */
public class CaptureArea
extends ImageView
implements TouchMoveAndStopDetector.TouchStopDetectorListener {
    private int mBgLandscape;
    private int mBgLandscapePressed;
    private int mBgPortrait;
    private int mBgPortraitPressed;
    private int mCurrentOrientation;
    private boolean mIsTouched;
    private CaptureAreaStateListener mListener;
    private CaptureAreaTouchEventListener mTouchListener;
    TouchMoveAndStopDetector mTouchMoveAndStopDetector;

    public CaptureArea(Context var1, AttributeSet var2);

    static /* synthetic */ boolean access$000(CaptureArea var0);

    static /* synthetic */ boolean access$002(CaptureArea var0, boolean var1);

    static /* synthetic */ CaptureAreaStateListener access$100(CaptureArea var0);

    static /* synthetic */ Point access$200(CaptureArea var0, MotionEvent var1);

    static /* synthetic */ boolean access$300(CaptureArea var0, View var1, MotionEvent var2);

    static /* synthetic */ void access$400(CaptureArea var0);

    private Point getTouchPoint(MotionEvent var1);

    private boolean hitTest(View var1, int var2, int var3);

    private boolean hitTest(View var1, MotionEvent var2);

    private void updateView();

    public boolean isTouched();

    @Override
    public void onSingleTouchMoveDetected(Point var1, Point var2, Point var3);

    @Override
    public void onSingleTouchStopDetected(Point var1, Point var2, Point var3);

    public void release();

    public void setCaptureAreaStateListener(CaptureAreaStateListener var1);

    public void setLandscapeBackgroundResource(int var1, int var2);

    public void setPortraitBackgroundResource(int var1, int var2);

    public void setSensorOrientation(int var1);

    public static interface CaptureAreaStateListener {
        public void onCaptureAreaCanceled();

        public void onCaptureAreaMoved(Point var1);

        public void onCaptureAreaReleased(Point var1);

        public void onCaptureAreaStopped();

        public void onCaptureAreaTouched(Point var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class CaptureAreaTouchEventListener
    implements View.OnTouchListener {
        final /* synthetic */ CaptureArea this$0;

        CaptureAreaTouchEventListener(CaptureArea var1);

        @Override
        public boolean onTouch(View var1, MotionEvent var2);
    }

}

