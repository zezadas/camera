/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SelfTimerCountDownNumberView
extends ImageView {
    private static final float ANIMATION_TIME_RATIO = 0.5f;
    private static final int ANIMATION_VALUE = 255;
    private static final String TAG;
    private int mCurrentCount;
    private ValueAnimator mValueAnimator;

    static;

    public SelfTimerCountDownNumberView(Context var1);

    public SelfTimerCountDownNumberView(Context var1, AttributeSet var2);

    public SelfTimerCountDownNumberView(Context var1, AttributeSet var2, int var3);

    static /* synthetic */ ValueAnimator access$300(SelfTimerCountDownNumberView var0);

    static /* synthetic */ int access$402(SelfTimerCountDownNumberView var0, int var1);

    static /* synthetic */ int access$410(SelfTimerCountDownNumberView var0);

    static /* synthetic */ void access$500(SelfTimerCountDownNumberView var0);

    private int getDuration(SelfTimerInterface var1);

    private void setAnimator(SelfTimerInterface var1);

    private void setImage();

    public void cancelSelfTimerAnimation();

    @Override
    public void onDraw(Canvas var1);

    public void setSelfTimer(SelfTimerInterface var1);

    @Override
    public void setVisibility(int var1);

    public void startAnimation();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AlphaAccelerateInterpolator
    extends AccelerateInterpolator {
        final /* synthetic */ SelfTimerCountDownNumberView this$0;

        private AlphaAccelerateInterpolator(SelfTimerCountDownNumberView var1);

        /* synthetic */ AlphaAccelerateInterpolator(SelfTimerCountDownNumberView var1,  var2);

        @Override
        public float getInterpolation(float var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AnimationEventHandler
    implements Animator.AnimatorListener {
        final /* synthetic */ SelfTimerCountDownNumberView this$0;

        private AnimationEventHandler(SelfTimerCountDownNumberView var1);

        /* synthetic */ AnimationEventHandler(SelfTimerCountDownNumberView var1,  var2);

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
    private class ValueAnimationUpdater
    implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ SelfTimerCountDownNumberView this$0;

        private ValueAnimationUpdater(SelfTimerCountDownNumberView var1);

        /* synthetic */ ValueAnimationUpdater(SelfTimerCountDownNumberView var1,  var2);

        @Override
        public void onAnimationUpdate(ValueAnimator var1);
    }

}

