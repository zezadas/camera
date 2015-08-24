/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Switch
extends LinearLayout
implements GestureDetector.OnGestureListener {
    private static final int OFF_POSITION = 0;
    private static final int PRESSED_COLOR_FILTER = 1711276032;
    public static final String TAG;
    private boolean mIsChecked;
    private boolean mIsTouched;
    private float mLastDownX;
    private float mLastDownY;
    private CompoundButton.OnCheckedChangeListener mOnCheckedChangeListener;
    private int mOnPosition;
    private ViewGroup mSwitchThumbContainer;
    private ImageView mSwitchTrack;
    private TextView mText;
    private final ViewConfiguration mViewConfiguration;

    static;

    public Switch(Context var1, AttributeSet var2);

    private void changeState(MotionEvent var1);

    private int getCurrentSliderGripPositionX(float var1, float var2);

    private boolean isMotionVertical(float var1, float var2);

    private void setDefaultPosition();

    @Override
    public boolean onDown(MotionEvent var1);

    @Override
    public void onFinishInflate();

    @Override
    public boolean onFling(MotionEvent var1, MotionEvent var2, float var3, float var4);

    @Override
    public void onLongPress(MotionEvent var1);

    @Override
    public boolean onScroll(MotionEvent var1, MotionEvent var2, float var3, float var4);

    @Override
    public void onShowPress(MotionEvent var1);

    @Override
    public boolean onSingleTapUp(MotionEvent var1);

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    public void setChecked(boolean var1);

    @Override
    public void setEnabled(boolean var1);

    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener var1);

    @Override
    public void setPressed(boolean var1);

    public void setText(CharSequence var1);

    public void updateIcon();
}

