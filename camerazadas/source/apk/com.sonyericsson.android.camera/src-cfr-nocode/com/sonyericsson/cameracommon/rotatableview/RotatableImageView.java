/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/*
 * Exception performing whole class analysis.
 */
public class RotatableImageView
extends ImageView {
    private int mFixRotation;
    private int mHeight;
    private boolean mPrepared;
    private int mSensorOrientation;
    private int mWidth;

    public RotatableImageView(Context var1);

    public RotatableImageView(Context var1, AttributeSet var2);

    public RotatableImageView(Context var1, AttributeSet var2, int var3);

    public void clearFixedRotate(int var1);

    public void fixRotation(int var1);

    protected boolean isPrepared();

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    public void setImageDrawable(Drawable var1);

    @Override
    public void setImageResource(int var1);

    @Override
    public void setImageURI(Uri var1);

    public void setSensorOrientation(int var1);

    public void setWidthHeight(int var1, int var2);

    public void update();
}

