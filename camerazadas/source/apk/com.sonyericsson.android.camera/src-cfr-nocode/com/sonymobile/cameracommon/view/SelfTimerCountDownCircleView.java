/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SelfTimerCountDownCircleView
extends View {
    private static final float ANIMATION_TIME_RATIO = 0.6f;
    private static final float ANIMATION_VALUE = 360.0f;
    public static final String TAG;
    private final int COUNTDOWN_CIRCLE_RADIUS;
    private final int COUNTDOWN_CIRCLE_STROKE_WIDTH;
    private Paint mPaint;
    private ValueAnimator mValueAnimator;

    static;

    private SelfTimerCountDownCircleView(Context var1);

    public SelfTimerCountDownCircleView(Context var1, AttributeSet var2);

    private SelfTimerCountDownCircleView(Context var1, AttributeSet var2, int var3);

    private void drawArc(Canvas var1);

    private int getRotateDuration(SelfTimerInterface var1);

    private void init(Context var1);

    private void setAnimator(SelfTimerInterface var1);

    public void cancelSelfTimerAnimation();

    @Override
    public void onDraw(Canvas var1);

    public void setSelfTimer(SelfTimerInterface var1);

    public void startAnimation();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AnimationEventHandler
    implements Animator.AnimatorListener {
        final /* synthetic */ SelfTimerCountDownCircleView this$0;

        private AnimationEventHandler(SelfTimerCountDownCircleView var1);

        /* synthetic */ AnimationEventHandler(SelfTimerCountDownCircleView var1,  var2);

        @Override
        public void onAnimationCancel(Animator var1);

        @Override
        public void onAnimationEnd(Animator var1);

        @Override
        public void onAnimationRepeat(Animator var1);

        @Override
        public void onAnimationStart(Animator var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CircleDecelerateInterpolator
    extends DecelerateInterpolator {
        final /* synthetic */ SelfTimerCountDownCircleView this$0;

        private CircleDecelerateInterpolator(SelfTimerCountDownCircleView var1);

        /* synthetic */ CircleDecelerateInterpolator(SelfTimerCountDownCircleView var1,  var2);

        @Override
        public float getInterpolation(float var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ValueAnimationUpdater
    implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ SelfTimerCountDownCircleView this$0;

        private ValueAnimationUpdater(SelfTimerCountDownCircleView var1);

        /* synthetic */ ValueAnimationUpdater(SelfTimerCountDownCircleView var1,  var2);

        @Override
        public void onAnimationUpdate(ValueAnimator var1);
    }

}

