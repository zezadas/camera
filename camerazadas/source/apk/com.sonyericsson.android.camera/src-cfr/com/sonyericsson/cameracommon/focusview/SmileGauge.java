/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.focusview.SmileScore;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;

public class SmileGauge
extends RelativeLayout {
    public static final int SMILE_LEVEL = 5;
    public static final int SMILE_MAX = 100;
    public static final int SMILE_MIN = 0;
    private static final String TAG = "SmileGauge";
    protected boolean mAlignBottom = false;
    protected boolean mAlignRight = false;
    private Rect mDisplayRect;
    private int mFaceRectangleBottom;
    private int mFaceRectangleLeft;
    private int mFaceRectangleRight;
    private int mFaceRectangleTop;
    private int mGaugePositionLimitBottom = 0;
    private int mGaugePositionLimitLeft = 0;
    private int mGaugePositionLimitRight = 0;
    private int mGaugePositionLimitTop = 0;
    private boolean mIsForLandscape = true;
    private int mMargin;
    private int mSmileScore;
    private int mSurfaceHeight;
    private int mSurfaceWidth;

    public SmileGauge(Context context) {
        this(context, null);
    }

    public SmileGauge(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SmileGauge(Context object, AttributeSet attributeSet, int n) {
        super((Context)object, attributeSet, n);
        object = object.obtainStyledAttributes(attributeSet, R.styleable.SmileGauge);
        this.mIsForLandscape = object.getBoolean(R.styleable.SmileGauge_forLandscape, true);
        object.recycle();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void correctPositionHorizontalLandScape() {
        int n = this.mDisplayRect.width();
        int n2 = (n - this.mSurfaceWidth) / 2;
        int n3 = this.mGaugePositionLimitLeft > n2 ? this.mGaugePositionLimitLeft : n2;
        n = this.mGaugePositionLimitRight > n2 ? (n-=this.mGaugePositionLimitRight) : (n-=n2);
        int n4 = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_width);
        if (this.mFaceRectangleLeft < n3 + n4 - n2) {
            this.moveToRight(2);
            return;
        } else {
            if (n - n4 - n2 >= this.mFaceRectangleRight) return;
            {
                this.moveToLeft(2);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void correctPositionHorizontalPortrait() {
        int n = this.mDisplayRect.width();
        int n2 = (n - this.mSurfaceWidth) / 2;
        int n3 = this.mGaugePositionLimitLeft > n2 ? this.mGaugePositionLimitLeft : n2;
        int n4 = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_height);
        if (this.mFaceRectangleLeft < n3) {
            this.moveToRight(1);
            return;
        } else {
            if (n - n2 >= this.mFaceRectangleLeft + n4) return;
            {
                this.moveToLeft(1);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void correctPositionVerticalLandScape() {
        int n = this.mDisplayRect.height();
        int n2 = (n - this.mSurfaceHeight) / 2;
        int n3 = this.mGaugePositionLimitTop > n2 ? this.mGaugePositionLimitTop : n2;
        n2 = this.mGaugePositionLimitBottom > n2 ? n - this.mGaugePositionLimitBottom : n - n2;
        n = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_height);
        if (n2 < this.mFaceRectangleTop + n) {
            this.moveToTop(2);
            return;
        } else {
            if (this.mFaceRectangleTop >= n3) return;
            {
                this.moveToBottom(2);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void correctPositionVerticalPortrait() {
        int n = this.mDisplayRect.height();
        int n2 = (n - this.mSurfaceHeight) / 2;
        int n3 = this.mGaugePositionLimitTop > n2 ? this.mGaugePositionLimitTop : n2;
        n = this.mGaugePositionLimitBottom > n2 ? (n-=this.mGaugePositionLimitBottom) : (n-=n2);
        int n4 = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_width);
        n3 = n3 + n4 - n2;
        if (n - n4 - n2 < this.mFaceRectangleBottom) {
            this.moveToTop(1);
            if (this.mFaceRectangleTop >= n3) return;
            {
                this.setVisibility(4);
                return;
            }
        } else {
            if (this.mFaceRectangleTop >= n3) return;
            {
                this.moveToBottom(1);
                return;
            }
        }
    }

    protected void alignBottom() {
        this.mAlignBottom = true;
    }

    protected void alignLeft() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)this.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.addRule(5, R.id.rect);
        this.setLayoutParams(layoutParams);
    }

    protected void alignRight() {
        this.mAlignRight = true;
    }

    protected void alignTop() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)this.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.addRule(6, R.id.rect);
        this.setLayoutParams(layoutParams);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void centerHorizontal() {
        int n = this.mFaceRectangleRight - this.mFaceRectangleLeft - this.getWidth();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)this.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.leftMargin = n > 0 ? n / 2 : 0;
        this.setLayoutParams(layoutParams);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void centerVertical() {
        int n = this.mFaceRectangleBottom - this.mFaceRectangleTop - this.getHeight();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)this.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.topMargin = n > 0 ? n / 2 : 0;
        this.setLayoutParams(layoutParams);
    }

    protected void clearLayoutParams() {
        this.mAlignBottom = false;
        this.mAlignRight = false;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)this.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.addRule(6, 0);
        layoutParams.addRule(5, 0);
        layoutParams.topMargin = 0;
        layoutParams.leftMargin = 0;
        this.setLayoutParams(layoutParams);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void drawThreshold() {
        ImageView imageView = (ImageView)this.findViewById(R.id.smile_gauge_threshold);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.isForLandscape()) {
            layoutParams.topMargin = this.mMargin;
            layoutParams.addRule(9);
        } else {
            layoutParams.leftMargin = this.mMargin;
            layoutParams.addRule(12);
        }
        imageView.setLayoutParams(layoutParams);
    }

    public int getSmileScore() {
        return this.mSmileScore;
    }

    public boolean isForLandscape() {
        return this.mIsForLandscape;
    }

    public void moveToBottom(int n) {
        if (n == 2) {
            this.clearLayoutParams();
            this.alignTop();
            return;
        }
        this.moveToId(R.id.smile_gauge_bottom);
    }

    protected void moveToId(int n) {
        if (this.getId() != n) {
            this.setVisibility(8);
            return;
        }
        this.setVisibility(0);
    }

    protected void moveToLeft(int n) {
        if (n == 2) {
            this.moveToId(R.id.smile_gauge_left);
            return;
        }
        this.clearLayoutParams();
        this.alignRight();
    }

    protected void moveToRight(int n) {
        if (n == 2) {
            this.moveToId(R.id.smile_gauge_right);
            return;
        }
        this.clearLayoutParams();
        this.alignLeft();
    }

    protected void moveToTop(int n) {
        if (n == 2) {
            this.clearLayoutParams();
            this.alignBottom();
            return;
        }
        this.moveToId(R.id.smile_gauge_top);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSmileScore = 0;
        this.mGaugePositionLimitTop = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_position_limit_top);
        this.mGaugePositionLimitLeft = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_position_limit_left);
        this.mGaugePositionLimitRight = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_position_limit_right);
        this.mGaugePositionLimitBottom = this.getResources().getDimensionPixelSize(R.dimen.smile_gauge_position_limit_bottom);
    }

    public void setDisplayRect(Rect rect) {
        this.mDisplayRect = rect;
    }

    public void setPosition(int n, int n2, int n3, int n4, int n5) {
        this.mFaceRectangleLeft = n;
        this.mFaceRectangleTop = n2;
        this.mFaceRectangleRight = n3;
        this.mFaceRectangleBottom = n4;
        if (this.mFaceRectangleLeft == this.mFaceRectangleRight || this.mFaceRectangleTop == this.mFaceRectangleBottom) {
            this.setVisibility(4);
            return;
        }
        this.update(n5);
    }

    public void setSmileLevel(int n) {
        this.mMargin = this.getResources().getDimensionPixelSize(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setSmileScore(int n) {
        int n2;
        if (n < 0) {
            n2 = 0;
        } else {
            n2 = n;
            if (n > 100) {
                n2 = 100;
            }
        }
        this.mSmileScore = n2;
        SmileScore smileScore = (SmileScore)this.findViewById(R.id.smile_gauge_score);
        smileScore.setSmileScore(n2);
        smileScore.invalidate();
    }

    public void setSurfaceSize(int n, int n2) {
        this.mSurfaceWidth = n;
        this.mSurfaceHeight = n2;
    }

    @Override
    public void setVisibility(int n) {
        super.setVisibility(n);
        if (n == 0) {
            this.drawThreshold();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)((TaggedRectangle)this.getParent()).getLayoutParams();
            this.setSurfaceSize(layoutParams.width, layoutParams.height);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void update(int n) {
        if (this.isForLandscape() && n != 2 || !this.isForLandscape() && n != 1) {
            this.clearLayoutParams();
            this.setVisibility(8);
            return;
        }
        if (n == 2) {
            this.moveToLeft(n);
            this.moveToBottom(n);
            this.correctPositionVerticalLandScape();
            this.correctPositionHorizontalLandScape();
        } else {
            this.moveToBottom(n);
            this.moveToRight(n);
            this.correctPositionVerticalPortrait();
            this.correctPositionHorizontalPortrait();
        }
        this.postInvalidate();
    }
}

