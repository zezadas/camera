/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class RotatableToast
extends FrameLayout
implements Animation.AnimationListener {
    private static final long FADEOUT_OFFSET_LONG = 4500;
    private static final long FADEOUT_OFFSET_SHORT = 2500;
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    private static final String TAG = "RotatableToast";
    private static ToastLayoutParams mLayoutParamsLandscape = null;
    private static ToastLayoutParams mLayoutParamsPortrait = null;
    private ViewGroup mBackgroundView = null;
    private ViewGroup mBaseView = null;
    private int mDuration = 0;
    private Animation mFadeoutAnimation;
    Handler mHandler = new Handler();
    private ViewGroup mLayoutRoot;
    private int mSensorOrientation = 2;
    private final Runnable mStartAnimation;
    private TextView mTextView = null;
    private ToastPosition mToastPosition = ToastPosition.CENTER;

    public RotatableToast(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mStartAnimation = new Runnable(){

            @Override
            public void run() {
                RotatableToast.this.mBaseView.startAnimation(RotatableToast.this.mFadeoutAnimation);
            }
        };
    }

    private void addToWindow() {
        if (this.getParent() != null) {
            this.mLayoutRoot.removeView(this);
        }
        this.mLayoutRoot.addView(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    private Rect getContainerRect() {
        ToastLayoutParams toastLayoutParams = this.mSensorOrientation == 1 ? mLayoutParamsPortrait : mLayoutParamsLandscape;
        if (toastLayoutParams == null) {
            return null;
        }
        switch (.$SwitchMap$com$sonyericsson$cameracommon$rotatableview$RotatableToast$ToastPosition[this.mToastPosition.ordinal()]) {
            default: {
                return null;
            }
            case 1: {
                return toastLayoutParams.topContainer;
            }
            case 2: 
        }
        return toastLayoutParams.bottomContainer;
    }

    public static RotatableToast inflate(Activity object) {
        if ((object = object.getLayoutInflater()) == null) {
            throw new AssertionError((Object)"LayoutInflater not found.");
        }
        return (RotatableToast)object.inflate(R.layout.rotatable_toast, null);
    }

    private void removeFromWindow() {
        if (this.getParent() != null) {
            this.mLayoutRoot.removeView(this);
        }
    }

    public static void setToastLayoutParams(ToastLayoutParams toastLayoutParams, ToastLayoutParams toastLayoutParams2) {
        mLayoutParamsLandscape = toastLayoutParams;
        mLayoutParamsPortrait = toastLayoutParams2;
    }

    private void updatePosition() {
        this.mBackgroundView.setRotation(RotationUtil.getAngle(this.mSensorOrientation));
        Rect rect = this.getContainerRect();
        if (rect != null) {
            this.mBackgroundView.setTranslationX(rect.centerX());
            this.mBackgroundView.setTranslationY(rect.centerY());
            return;
        }
        this.mBackgroundView.setTranslationX(0.0f);
        this.mBackgroundView.setTranslationY(0.0f);
    }

    private void updateTextMaxWidth() {
        if (this.mSensorOrientation == 1) {
            this.mTextView.setMaxWidth(this.getResources().getDimensionPixelSize(R.dimen.rotatable_toast_max_width_for_port));
            return;
        }
        this.mTextView.setMaxWidth(this.getResources().getDimensionPixelSize(R.dimen.rotatable_toast_max_width_for_land));
    }

    public int getDuration() {
        return this.mDuration;
    }

    public void hide() {
        this.mBaseView.clearAnimation();
    }

    public void hideImmediately() {
        this.mBaseView.setVisibility(4);
        Animation animation = this.mBaseView.getAnimation();
        if (animation != null) {
            if (!(animation.hasStarted() || animation.hasEnded())) {
                this.mBaseView.clearAnimation();
                this.removeFromWindow();
                return;
            }
            this.mBaseView.clearAnimation();
            return;
        }
        this.mHandler.removeCallbacks(this.mStartAnimation);
        this.removeFromWindow();
    }

    @Override
    public void onAnimationEnd(Animation animation) {
        this.removeFromWindow();
    }

    @Override
    public void onAnimationRepeat(Animation animation) {
    }

    @Override
    public void onAnimationStart(Animation animation) {
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mLayoutRoot = (ViewGroup)((Activity)this.getContext()).getWindow().getDecorView();
        this.mBaseView = (ViewGroup)this.findViewById(R.id.rotatable_toast_base);
        this.mBackgroundView = (ViewGroup)this.findViewById(R.id.rotatable_toast_text_background);
        this.mTextView = (TextView)this.findViewById(R.id.rotatable_toast_text);
        this.mFadeoutAnimation = AnimationUtils.loadAnimation(this.getContext(), R.anim.rotatable_toast_anime);
    }

    @Override
    public boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (this.mBaseView.getContentDescription() == null) {
            return false;
        }
        accessibilityEvent.setEventType(64);
        boolean bl = super.requestSendAccessibilityEvent(view, accessibilityEvent);
        this.mBaseView.setContentDescription(null);
        return bl;
    }

    public void setDuration(int n) {
        this.mDuration = n;
    }

    public void setSensorOrientation(int n) {
        this.mSensorOrientation = n;
        this.updateTextMaxWidth();
        this.updatePosition();
    }

    public void setTextResId(int n) {
        this.mTextView.setText(n);
    }

    public void setToastPosition(ToastPosition toastPosition) {
        this.mToastPosition = toastPosition;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void show() {
        this.mBaseView.setContentDescription(this.mTextView.getText());
        this.addToWindow();
        this.updateTextMaxWidth();
        this.updatePosition();
        long l = this.mDuration == 1 ? 4500 : 2500;
        this.mFadeoutAnimation.setAnimationListener(this);
        this.mHandler.postDelayed(this.mStartAnimation, l);
    }

    public static class ToastLayoutParams {
        public final Rect bottomContainer;
        public final Rect topContainer;

        public ToastLayoutParams(int n, int n2, Rect rect, Rect rect2) {
            this.topContainer = rect;
            this.topContainer.offset((- n) / 2, (- n2) / 2);
            this.bottomContainer = rect2;
            this.bottomContainer.offset((- n) / 2, (- n2) / 2);
        }
    }

    public static enum ToastPosition {
        TOP,
        CENTER,
        BOTTOM;
        

        private ToastPosition() {
        }
    }

}

