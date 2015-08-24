/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.view;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;

public class SelfTimerCountDownCircleView
extends View {
    private static final float ANIMATION_TIME_RATIO = 0.6f;
    private static final float ANIMATION_VALUE = 360.0f;
    public static final String TAG = SelfTimerCountDownCircleView.class.getSimpleName();
    private final int COUNTDOWN_CIRCLE_RADIUS;
    private final int COUNTDOWN_CIRCLE_STROKE_WIDTH;
    private Paint mPaint;
    private ValueAnimator mValueAnimator;

    private SelfTimerCountDownCircleView(Context context) {
        super(context);
        this.COUNTDOWN_CIRCLE_RADIUS = this.getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) / 2;
        this.COUNTDOWN_CIRCLE_STROKE_WIDTH = (this.getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) - this.getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_inside_diameter)) / 2;
        this.mValueAnimator = null;
        this.init(context);
    }

    public SelfTimerCountDownCircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.COUNTDOWN_CIRCLE_RADIUS = this.getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) / 2;
        this.COUNTDOWN_CIRCLE_STROKE_WIDTH = (this.getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) - this.getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_inside_diameter)) / 2;
        this.mValueAnimator = null;
        this.init(context);
    }

    private SelfTimerCountDownCircleView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.COUNTDOWN_CIRCLE_RADIUS = this.getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) / 2;
        this.COUNTDOWN_CIRCLE_STROKE_WIDTH = (this.getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) - this.getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_inside_diameter)) / 2;
        this.mValueAnimator = null;
        this.init(context);
    }

    private void drawArc(Canvas canvas) {
        if (this.mValueAnimator != null && this.mValueAnimator.isRunning()) {
            float f = this.COUNTDOWN_CIRCLE_RADIUS - this.COUNTDOWN_CIRCLE_STROKE_WIDTH / 2;
            float f2 = (float)canvas.getWidth() / 2.0f;
            float f3 = (float)canvas.getHeight() / 2.0f;
            canvas.drawArc(new RectF(f2 - f, f3 - f, f2 + f, f3 + f), -90.0f, ((Float)this.mValueAnimator.getAnimatedValue()).floatValue(), false, this.mPaint);
        }
    }

    private int getRotateDuration(SelfTimerInterface selfTimerInterface) {
        if (selfTimerInterface.getDurationInMillisecond() < 1000) {
            return 500;
        }
        return 1000;
    }

    private void init(Context context) {
        this.mPaint = new Paint();
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.COUNTDOWN_CIRCLE_STROKE_WIDTH);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(this.getResources().getColor(R.color.viewfinder_countdown_circle_color));
    }

    private void setAnimator(SelfTimerInterface selfTimerInterface) {
        this.mValueAnimator = ValueAnimator.ofFloat(0.0f, 360.0f);
        this.mValueAnimator.setInterpolator(new CircleDecelerateInterpolator());
        this.mValueAnimator.setRepeatMode(1);
        this.mValueAnimator.setDuration(this.getRotateDuration(selfTimerInterface));
        this.mValueAnimator.setRepeatCount(selfTimerInterface.getDurationInMillisecond() / 1000 - 1);
        this.mValueAnimator.addUpdateListener(new ValueAnimationUpdater());
        this.mValueAnimator.addListener(new AnimationEventHandler());
    }

    public void cancelSelfTimerAnimation() {
        this.mValueAnimator.end();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.drawArc(canvas);
    }

    public void setSelfTimer(SelfTimerInterface selfTimerInterface) {
        this.setAnimator(selfTimerInterface);
    }

    public void startAnimation() {
        if (!(this.mValueAnimator == null || this.mValueAnimator.isRunning())) {
            this.mValueAnimator.start();
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
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    private class CircleDecelerateInterpolator
    extends DecelerateInterpolator {
        private CircleDecelerateInterpolator() {
        }

        @Override
        public float getInterpolation(float f) {
            float f2;
            f = f2 = f * 1.6666666f;
            if (1.0f <= f2) {
                f = 1.0f;
            }
            return super.getInterpolation(f);
        }
    }

    private class ValueAnimationUpdater
    implements ValueAnimator.AnimatorUpdateListener {
        private ValueAnimationUpdater() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SelfTimerCountDownCircleView.this.invalidate();
        }
    }

}

