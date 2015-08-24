/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

/*
 * Exception performing whole class analysis.
 */
public class Rectangle
extends RelativeLayout
implements GestureDetector.OnGestureListener {
    private static final String TAG = "Rectangles";
    private GestureDetector mGestureDetector;
    private RectangleOnTouchListener mRectangleOnTouchListener;

    public Rectangle(Context var1);

    public Rectangle(Context var1, AttributeSet var2);

    public Rectangle(Context var1, AttributeSet var2, int var3);

    private GestureDetector getGestureDetector();

    public void changeChildBackgroundResource(int var1);

    @Override
    public boolean onDown(MotionEvent var1);

    @Override
    public boolean onFling(MotionEvent var1, MotionEvent var2, float var3, float var4);

    @Override
    public void onLongPress(MotionEvent var1);

    @Override
    public boolean onScroll(MotionEvent var1, MotionEvent var2, float var3, float var4);

    @Override
    public void onShowPress(MotionEvent var1);

    @Override
    public boolean onSingleTapUp(MotionEvent var1);

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    public void setRectangleOnTouchListener(RectangleOnTouchListener var1);

    public static interface RectangleOnTouchListener {
        public void onRectTouchCancel(View var1, MotionEvent var2);

        public void onRectTouchDown(View var1, MotionEvent var2);

        public void onRectTouchLongPress(MotionEvent var1);

        public void onRectTouchUp(View var1, MotionEvent var2);
    }

}

