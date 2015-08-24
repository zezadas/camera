/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.TextView;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class RotatableToast
extends FrameLayout
implements Animation.AnimationListener {
    private static final long FADEOUT_OFFSET_LONG = 4500;
    private static final long FADEOUT_OFFSET_SHORT = 2500;
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    private static final String TAG = "RotatableToast";
    private static ToastLayoutParams mLayoutParamsLandscape;
    private static ToastLayoutParams mLayoutParamsPortrait;
    private ViewGroup mBackgroundView;
    private ViewGroup mBaseView;
    private int mDuration;
    private Animation mFadeoutAnimation;
    Handler mHandler;
    private ViewGroup mLayoutRoot;
    private int mSensorOrientation;
    private final Runnable mStartAnimation;
    private TextView mTextView;
    private ToastPosition mToastPosition;

    static;

    public RotatableToast(Context var1, AttributeSet var2);

    static /* synthetic */ Animation access$000(RotatableToast var0);

    static /* synthetic */ ViewGroup access$100(RotatableToast var0);

    private void addToWindow();

    private Rect getContainerRect();

    public static RotatableToast inflate(Activity var0);

    private void removeFromWindow();

    public static void setToastLayoutParams(ToastLayoutParams var0, ToastLayoutParams var1);

    private void updatePosition();

    private void updateTextMaxWidth();

    public int getDuration();

    public void hide();

    public void hideImmediately();

    @Override
    public void onAnimationEnd(Animation var1);

    @Override
    public void onAnimationRepeat(Animation var1);

    @Override
    public void onAnimationStart(Animation var1);

    @Override
    protected void onFinishInflate();

    @Override
    public boolean requestSendAccessibilityEvent(View var1, AccessibilityEvent var2);

    public void setDuration(int var1);

    public void setSensorOrientation(int var1);

    public void setTextResId(int var1);

    public void setToastPosition(ToastPosition var1);

    public void show();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class ToastLayoutParams {
        public final Rect bottomContainer;
        public final Rect topContainer;

        public ToastLayoutParams(int var1, int var2, Rect var3, Rect var4);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ToastPosition
    extends Enum<ToastPosition> {
        private static final /* synthetic */ ToastPosition[] $VALUES;
        public static final /* enum */ ToastPosition BOTTOM;
        public static final /* enum */ ToastPosition CENTER;
        public static final /* enum */ ToastPosition TOP;

        static;

        private ToastPosition();

        public static ToastPosition valueOf(String var0);

        public static ToastPosition[] values();
    }

}

