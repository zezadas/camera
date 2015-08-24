/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TouchArea
extends RelativeLayout {
    private static final String TAG;
    private boolean mIsCanceled;
    private View.OnTouchListener mListener;
    private Rect mTouchArea;

    static;

    public TouchArea(Context var1);

    public TouchArea(Context var1, AttributeSet var2);

    public TouchArea(Context var1, AttributeSet var2, int var3);

    public boolean contains(MotionEvent var1);

    public Rect getTouchAreaRect();

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    public void setSurfaceArea(Rect var1);

    public void setTocuhAreaListener(View.OnTouchListener var1);
}

