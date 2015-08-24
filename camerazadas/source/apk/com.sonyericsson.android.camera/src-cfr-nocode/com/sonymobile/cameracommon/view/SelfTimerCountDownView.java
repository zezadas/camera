/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;
import com.sonymobile.cameracommon.view.SelfTimerCountDownCircleView;
import com.sonymobile.cameracommon.view.SelfTimerCountDownNumberView;

/*
 * Exception performing whole class analysis.
 */
public class SelfTimerCountDownView
extends FrameLayout {
    private SelfTimerCountDownCircleView mSelfTimerCountDownCircleView;
    private SelfTimerCountDownNumberView mSelfTimerCountDownNumberView;

    public SelfTimerCountDownView(Context var1, AttributeSet var2);

    public void cancelSelfTimerCountDownAnimation();

    @Override
    public void onDraw(Canvas var1);

    @Override
    public void onFinishInflate();

    public void setSelfTimer(SelfTimerInterface var1);

    public void setSensorOrientation(int var1);

    public void startSelfTimerCountDownAnimation();
}

