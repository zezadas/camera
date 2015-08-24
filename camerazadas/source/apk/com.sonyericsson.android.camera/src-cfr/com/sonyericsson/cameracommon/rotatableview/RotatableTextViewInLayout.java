/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;

public class RotatableTextViewInLayout
extends RelativeLayout {
    private static final int ROTATE_DEGREE = -90;
    private ImageView mBackground = null;
    private int mLayoutHeight = 0;
    private int mLayoutWidth = 0;
    private int mSensorOrientation = 2;
    private TextView mText = null;
    private int mTextViewHeightOnLandscape = 0;
    private int mTextViewHeightOnPortrait = 0;
    private int mTextViewWidthOnLandscape = 0;
    private int mTextViewWidthOnPortrait = 0;

    public RotatableTextViewInLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        if (this.mSensorOrientation == 1) {
            canvas.rotate(-90.0f, (float)this.getWidth() / 2.0f, (float)this.getHeight() / 2.0f);
        }
        super.dispatchDraw(canvas);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mText = (TextView)this.findViewById(R.id.rotatable_text_view_text);
        this.mText.setGravity(17);
        this.mBackground = (ImageView)this.findViewById(R.id.rotatable_text_view_background);
        this.mBackground.setScaleType(ImageView.ScaleType.FIT_XY);
    }

    @Override
    protected void onSizeChanged(int n, int n2, int n3, int n4) {
        this.mLayoutWidth = n;
        this.mLayoutHeight = n2;
        this.updateLayout();
    }

    public void setBackgroundDrawableId(int n) {
        this.mBackground.setImageResource(n);
    }

    public void setSensorOrientation(int n) {
        this.mSensorOrientation = n;
        this.updateLayout();
    }

    public void setTextResId(int n) {
        this.mText.setText(n);
    }

    public void setTextSizeOnLandscape(int n, int n2) {
        this.mTextViewWidthOnLandscape = n;
        this.mTextViewHeightOnLandscape = n2;
    }

    public void setTextSizeOnPortrait(int n, int n2) {
        this.mTextViewWidthOnPortrait = n;
        this.mTextViewHeightOnPortrait = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateLayout() {
        ((RelativeLayout.LayoutParams)this.mText.getLayoutParams()).addRule(13);
        ((RelativeLayout.LayoutParams)this.mBackground.getLayoutParams()).addRule(13);
        if (this.mSensorOrientation == 1) {
            this.mText.getLayoutParams().width = this.mTextViewWidthOnPortrait;
            this.mBackground.getLayoutParams().width = this.mLayoutHeight;
            this.mBackground.getLayoutParams().height = this.mTextViewHeightOnPortrait;
            this.scrollTo((this.mLayoutWidth / 2 - this.mTextViewHeightOnPortrait / 2) * -1, 0);
        } else {
            this.mText.getLayoutParams().width = this.mTextViewWidthOnLandscape;
            this.mBackground.getLayoutParams().width = this.mLayoutWidth;
            this.mBackground.getLayoutParams().height = this.mTextViewHeightOnLandscape;
            this.scrollTo(0, (this.mLayoutHeight / 2 - this.mTextViewHeightOnLandscape / 2) * -1);
        }
        this.requestLayout();
        this.invalidate();
    }
}

