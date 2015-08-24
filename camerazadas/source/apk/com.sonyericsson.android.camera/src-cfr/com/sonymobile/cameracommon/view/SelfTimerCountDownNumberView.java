/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.view;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class SelfTimerCountDownNumberView
extends ImageView {
    private static final float ANIMATION_TIME_RATIO = 0.5f;
    private static final int ANIMATION_VALUE = 255;
    private static final String TAG = SelfTimerCountDownNumberView.class.getSimpleName();
    private int mCurrentCount = 0;
    private ValueAnimator mValueAnimator = null;

    public SelfTimerCountDownNumberView(Context context) {
        super(context);
    }

    public SelfTimerCountDownNumberView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SelfTimerCountDownNumberView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    static /* synthetic */ int access$410(SelfTimerCountDownNumberView selfTimerCountDownNumberView) {
        int n = selfTimerCountDownNumberView.mCurrentCount;
        selfTimerCountDownNumberView.mCurrentCount = n - 1;
        return n;
    }

    private int getDuration(SelfTimerInterface selfTimerInterface) {
        if (selfTimerInterface.getDurationInMillisecond() < 1000) {
            return 500;
        }
        return 1000;
    }

    private void setAnimator(SelfTimerInterface selfTimerInterface) {
        this.mValueAnimator = ValueAnimator.ofInt(0, 255);
        this.mValueAnimator.setInterpolator(new AlphaAccelerateInterpolator());
        this.mValueAnimator.setRepeatCount(selfTimerInterface.getDurationInMillisecond() / 1000 - 1);
        this.mValueAnimator.setRepeatMode(1);
        this.mValueAnimator.setDuration(this.getDuration(selfTimerInterface));
        this.mValueAnimator.addUpdateListener(new ValueAnimationUpdater());
        this.mValueAnimator.addListener(new AnimationEventHandler());
    }

    private void setImage() {
        switch (this.mCurrentCount) {
            default: {
                CameraLogger.e(TAG, "setImage() [Irregal Value = " + this.mValueAnimator.getAnimatedValue() + "]");
                return;
            }
            case 10: {
                this.setImageResource(R.drawable.cam_selftimer_countdown_10_icn);
                return;
            }
            case 9: {
                this.setImageResource(R.drawable.cam_selftimer_countdown_9_icn);
                return;
            }
            case 8: {
                this.setImageResource(R.drawable.cam_selftimer_countdown_8_icn);
                return;
            }
            case 7: {
                this.setImageResource(R.drawable.cam_selftimer_countdown_7_icn);
                return;
            }
            case 6: {
                this.setImageResource(R.drawable.cam_selftimer_countdown_6_icn);
                return;
            }
            case 5: {
                this.setImageResource(R.drawable.cam_selftimer_countdown_5_icn);
                return;
            }
            case 4: {
                this.setImageResource(R.drawable.cam_selftimer_countdown_4_icn);
                return;
            }
            case 3: {
                this.setImageResource(R.drawable.cam_selftimer_countdown_3_icn);
                return;
            }
            case 2: {
                this.setImageResource(R.drawable.cam_selftimer_countdown_2_icn);
                return;
            }
            case 1: 
        }
        this.setImageResource(R.drawable.cam_selftimer_countdown_1_icn);
    }

    public void cancelSelfTimerAnimation() {
        this.mValueAnimator.end();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void setSelfTimer(SelfTimerInterface selfTimerInterface) {
        this.setAnimator(selfTimerInterface);
    }

    @Override
    public void setVisibility(int n) {
        super.setVisibility(n);
    }

    public void startAnimation() {
        if (!this.mValueAnimator.isRunning()) {
            this.mValueAnimator.start();
        }
    }

    private class AlphaAccelerateInterpolator
    extends AccelerateInterpolator {
        private AlphaAccelerateInterpolator() {
        }

        @Override
        public float getInterpolation(float f) {
            float f2;
            f = f2 = f * 2.0f;
            if (1.0f <= f2) {
                f = 1.0f;
            }
            return super.getInterpolation(f);
        }
    }

    private class AnimationEventHandler
    implements Animator.AnimatorListener {
        private AnimationEventHandler() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            SelfTimerCountDownNumberView.this.setImageBitmap(null);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            SelfTimerCountDownNumberView.access$410(SelfTimerCountDownNumberView.this);
            SelfTimerCountDownNumberView.this.setImage();
            SelfTimerCountDownNumberView.this.setImageAlpha(0);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            SelfTimerCountDownNumberView.this.mCurrentCount = SelfTimerCountDownNumberView.this.mValueAnimator.getRepeatCount() + 1;
            SelfTimerCountDownNumberView.this.setImage();
            SelfTimerCountDownNumberView.this.setImageAlpha(0);
        }
    }

    private class ValueAnimationUpdater
    implements ValueAnimator.AnimatorUpdateListener {
        private ValueAnimationUpdater() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int n = (Integer)SelfTimerCountDownNumberView.this.mValueAnimator.getAnimatedValue();
            SelfTimerCountDownNumberView.this.setImageAlpha(n);
            SelfTimerCountDownNumberView.this.invalidate();
        }
    }

}

