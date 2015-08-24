/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.graphics.Rect;
import android.view.ViewGroup;
import android.view.animation.AnimationSet;
import com.sonyericsson.android.camera.view.SingleRectangle;

/*
 * Exception performing whole class analysis.
 */
public class TouchRectangle
extends SingleRectangle {
    private final AnimationSet mFocusTouchDownAnimation;
    private final AnimationSet mFocusTouchUpAnimation;

    public TouchRectangle(ViewGroup var1);

    @Override
    protected void deselect();

    @Override
    protected int getNormalIcon();

    @Override
    protected int getSuccessIcon();

    @Override
    protected void select(Rect var1, boolean var2);

    @Override
    protected void setPosition(Rect[] var1);

    @Override
    protected void show();

    public void startTouchUpAnimation(Rect var1, boolean var2);

}

