/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing.view;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.interaction.TouchActionTranslator;

/*
 * Exception performing whole class analysis.
 */
public class CaptureArea
extends ImageView
implements TouchActionTranslator.TouchActionListener {
    private static final String TAG = "CaptureArea";
    private boolean mIsLongPressed;
    private boolean mIsTouched;
    private CaptureAreaStateListener mListener;
    private CaptureAreaTouchEventListener mTouchListener;
    private TouchActionTranslator mUserInteractionEngine;

    public CaptureArea(Context var1, AttributeSet var2);

    static /* synthetic */ TouchActionTranslator access$000(CaptureArea var0);

    static /* synthetic */ boolean access$102(CaptureArea var0, boolean var1);

    static /* synthetic */ CaptureAreaStateListener access$200(CaptureArea var0);

    private Point convertPointCoordinatesFromThisViewToScreen(Point var1);

    public boolean contains(MotionEvent var1);

    public boolean isTouched();

    @Override
    public void onDoubleCanceled();

    @Override
    public void onDoubleMoved(Point var1, Point var2);

    @Override
    public void onDoubleRotated(float var1, float var2);

    @Override
    public void onDoubleScaled(float var1, float var2, float var3);

    @Override
    public void onDoubleTouched(Point var1, Point var2);

    @Override
    public void onFling(MotionEvent var1, MotionEvent var2, float var3, float var4);

    @Override
    public void onLongPress(MotionEvent var1);

    @Override
    public void onOverTripleCanceled();

    @Override
    public void onShowPress(MotionEvent var1);

    @Override
    public void onSingleCanceled();

    @Override
    public void onSingleMoved(Point var1, Point var2, Point var3);

    @Override
    public void onSingleReleased(Point var1);

    @Override
    public void onSingleReleasedInDouble(Point var1, Point var2);

    @Override
    public void onSingleStopped(Point var1, Point var2, Point var3);

    @Override
    public void onSingleTapUp(MotionEvent var1);

    @Override
    public void onSingleTouched(Point var1);

    public void release();

    public void setCaptureAreaStateListener(CaptureAreaStateListener var1);

    public static interface CaptureAreaStateListener {
        public void onCaptureAreaCanceled();

        public void onCaptureAreaIsReadyToScale();

        public void onCaptureAreaLongPressed(Point var1);

        public void onCaptureAreaMoved(Point var1);

        public void onCaptureAreaReleased(Point var1);

        public void onCaptureAreaScaled(float var1);

        public void onCaptureAreaSingleTapUp(Point var1);

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

