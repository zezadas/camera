/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.extendedview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;

/*
 * Exception performing whole class analysis.
 */
public class RoundRectImageView
extends ImageView {
    private Path mClipPath;
    private RectF mDstRect;
    private float[] mRadiusSet;

    public RoundRectImageView(Context var1);

    public RoundRectImageView(Context var1, AttributeSet var2);

    private void initialize();

    private void updateClipPath();

    @Override
    public void onDraw(Canvas var1);

    @Override
    public void onSizeChanged(int var1, int var2, int var3, int var4);

    public void setRadius(float var1);

    public void setRadius(float var1, float var2, float var3, float var4);
}

