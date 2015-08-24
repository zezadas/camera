/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.sonyericsson.android.camera.ExtendedActivity;

public class RotatableImageView
extends ImageView {
    private static final String TAG = "RotatableImageView";
    private int mFixRotation = 0;
    private int mHeight = 0;
    private boolean mPrepared = false;
    private int mSensorOrientation = 0;
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
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void update() {
        if (!this.isPrepared()) {
            return;
        }
        var2_1 = this.getWidth();
        var3_2 = this.getHeight();
        var5_3 = new Matrix();
        var1_4 = this.mSensorOrientation;
        var4_5 = ((ExtendedActivity)this.getContext()).getOrientation();
        var1_4 = this.mFixRotation != 0 ? this.mFixRotation : (var1_4 == 1 && var4_5 != 1 ? 1 : 2);
        if (this.getDrawable() == null) ** GOTO lbl-1000
        var5_3.preScale((float)this.mWidth / (float)this.getDrawable().getIntrinsicWidth(), (float)this.mHeight / (float)this.getDrawable().getIntrinsicHeight());
        if (var1_4 == 1) lbl-1000: // 2 sources:
        {
            var5_3.postTranslate((- (float)var2_1) / 2.0f, (- (float)var3_2) / 2.0f);
            var5_3.postRotate(-90);
            var5_3.postTranslate((float)var3_2 / 2.0f, (float)var2_1 / 2.0f);
            var2_1 = this.mHeight;
            var1_4 = this.mWidth;
        } else {
            var2_1 = this.mWidth;
            var1_4 = this.mHeight;
        }
        this.setImageMatrix((Matrix)var5_3);
        var5_3 = this.getLayoutParams();
        var5_3.height = var1_4;
        var5_3.width = var2_1;
        this.setLayoutParams((ViewGroup.LayoutParams)var5_3);
        this.requestLayout();
    }
}

