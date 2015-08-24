/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.extendedview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;

public class RoundRectImageView
extends ImageView {
    private Path mClipPath = new Path();
    private RectF mDstRect = new RectF();
    private float[] mRadiusSet = new float[8];

    public RoundRectImageView(Context context) {
        super(context);
        this.initialize();
    }

    public RoundRectImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize();
    }

    private void initialize() {
        if (Build.VERSION.SDK_INT < 18) {
            this.setLayerType(1, null);
        }
        this.mClipPath.setFillType(Path.FillType.WINDING);
    }

    private void updateClipPath() {
        this.mClipPath.addRoundRect(this.mDstRect, this.mRadiusSet, Path.Direction.CCW);
    }

    @Override
    public void onDraw(Canvas canvas) {
        canvas.save();
        canvas.clipPath(this.mClipPath);
        super.onDraw(canvas);
        canvas.restore();
    }

    @Override
    public void onSizeChanged(int n, int n2, int n3, int n4) {
        super.onSizeChanged(n, n2, n3, n4);
        this.mDstRect.set(0.0f, 0.0f, n, n2);
        this.updateClipPath();
    }

    public void setRadius(float f) {
        for (int i = 0; i < 8; ++i) {
            this.mRadiusSet[i] = f;
        }
        this.updateClipPath();
    }

    public void setRadius(float f, float f2, float f3, float f4) {
        this.mRadiusSet[0] = f;
        this.mRadiusSet[1] = f;
        this.mRadiusSet[2] = f2;
        this.mRadiusSet[3] = f2;
        this.mRadiusSet[4] = f3;
        this.mRadiusSet[5] = f3;
        this.mRadiusSet[6] = f4;
        this.mRadiusSet[7] = f4;
        this.updateClipPath();
    }
}

