/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

/*
 * Exception performing whole class analysis.
 */
public class RotatableTextViewInLayout
extends RelativeLayout {
    private static final int ROTATE_DEGREE = -90;
    private ImageView mBackground;
    private int mLayoutHeight;
    private int mLayoutWidth;
    private int mSensorOrientation;
    private TextView mText;
    private int mTextViewHeightOnLandscape;
    private int mTextViewHeightOnPortrait;
    private int mTextViewWidthOnLandscape;
    private int mTextViewWidthOnPortrait;

    public RotatableTextViewInLayout(Context var1, AttributeSet var2);

    @Override
    protected void dispatchDraw(Canvas var1);

    @Override
    protected void onFinishInflate();

    @Override
    protected void onSizeChanged(int var1, int var2, int var3, int var4);

    public void setBackgroundDrawableId(int var1);

    public void setSensorOrientation(int var1);

    public void setTextResId(int var1);

    public void setTextSizeOnLandscape(int var1, int var2);

    public void setTextSizeOnPortrait(int var1, int var2);

    public void updateLayout();
}

