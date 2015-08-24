/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;

public class RotatableImageView
extends ImageView {
    private int mFixRotation = 0;
    private int mHeight = 0;
    private boolean mPrepared = false;
    private int mSensorOrientation = 2;
    private int mWidth = 0;

    public RotatableImageView(Context context) {
        super(context);
        this.setScaleType(ImageView.ScaleType.MATRIX);
    }

    public RotatableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setScaleType(ImageView.ScaleType.MATRIX);
    }

    public RotatableImageView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.setScaleType(ImageView.ScaleType.MATRIX);
    }

    public void clearFixedRotate(int n) {
        this.mFixRotation = 0;
        this.update();
    }

    public void fixRotation(int n) {
        this.mFixRotation = n;
        this.update();
    }

    protected boolean isPrepared() {
        return this.mPrepared;
    }

    @Override
    protected void onLayout(boolean bl, int n, int n2, int n3, int n4) {
        super.onLayout(bl, n, n2, n3, n4);
        if (!this.isPrepared()) {
            this.setWidthHeight(this.getWidth(), this.getHeight());
            this.update();
        }
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        this.update();
    }

    @Override
    public void setImageResource(int n) {
        super.setImageResource(n);
        this.update();
    }

    @Override
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        this.update();
    }

    public void setSensorOrientation(int n) {
        this.mSensorOrientation = n;
        this.update();
    }

    public void setWidthHeight(int n, int n2) {
        this.mWidth = n;
        this.mHeight = n2;
        this.mPrepared = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void update() {
        if (!this.isPrepared()) {
            return;
        }
        int n = this.getWidth();
        int n2 = this.getHeight();
        Object object = new Matrix();
        int n3 = this.mSensorOrientation;
        if (this.mFixRotation != 0) {
            n3 = this.mFixRotation;
        }
        if (this.getDrawable() != null) {
            object.preScale((float)this.mWidth / (float)this.getDrawable().getIntrinsicWidth(), (float)this.mHeight / (float)this.getDrawable().getIntrinsicHeight());
        }
        if (n3 == 1) {
            object.postTranslate((- (float)n) / 2.0f, (- (float)n2) / 2.0f);
            object.postRotate(-90);
            object.postTranslate((float)n2 / 2.0f, (float)n / 2.0f);
            n = this.mHeight;
            n3 = this.mWidth;
        } else {
            n = this.mWidth;
            n3 = this.mHeight;
        }
        this.setImageMatrix((Matrix)object);
        object = this.getLayoutParams();
        object.height = n3;
        object.width = n;
        this.setLayoutParams((ViewGroup.LayoutParams)object);
        this.requestLayout();
    }
}

