/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.cameracommon.view.SelfTimerCountDownCircleView;
import com.sonymobile.cameracommon.view.SelfTimerCountDownNumberView;

public class SelfTimerCountDownView
extends FrameLayout {
    private SelfTimerCountDownCircleView mSelfTimerCountDownCircleView;
    private SelfTimerCountDownNumberView mSelfTimerCountDownNumberView;

    public SelfTimerCountDownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void cancelSelfTimerCountDownAnimation() {
        if (this.mSelfTimerCountDownCircleView != null) {
            this.mSelfTimerCountDownCircleView.cancelSelfTimerAnimation();
        }
        if (this.mSelfTimerCountDownNumberView != null) {
            this.mSelfTimerCountDownNumberView.cancelSelfTimerAnimation();
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSelfTimerCountDownCircleView = (SelfTimerCountDownCircleView)this.findViewById(R.id.selftimer_countdown_circle);
        this.mSelfTimerCountDownNumberView = (SelfTimerCountDownNumberView)this.findViewById(R.id.selftimer_countdown_text);
    }

    public void setSelfTimer(SelfTimerInterface selfTimerInterface) {
        if (this.mSelfTimerCountDownCircleView != null) {
            this.mSelfTimerCountDownCircleView.setSelfTimer(selfTimerInterface);
        }
        if (this.mSelfTimerCountDownNumberView != null) {
            this.mSelfTimerCountDownNumberView.setSelfTimer(selfTimerInterface);
        }
    }

    public void setSensorOrientation(int n) {
        this.setRotation(RotationUtil.getAngle(n));
    }

    public void startSelfTimerCountDownAnimation() {
        if (this.mSelfTimerCountDownNumberView != null) {
            this.mSelfTimerCountDownNumberView.startAnimation();
        }
        if (this.mSelfTimerCountDownCircleView != null) {
            this.mSelfTimerCountDownCircleView.startAnimation();
        }
    }
}

