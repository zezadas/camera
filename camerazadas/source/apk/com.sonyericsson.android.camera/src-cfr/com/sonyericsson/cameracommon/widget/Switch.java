/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;

public class Switch
extends LinearLayout
implements GestureDetector.OnGestureListener {
    private static final int OFF_POSITION = 0;
    private static final int PRESSED_COLOR_FILTER = 1711276032;
    public static final String TAG = Switch.class.getSimpleName();
    private boolean mIsChecked;
    private boolean mIsTouched;
    private float mLastDownX = 0.0f;
    private float mLastDownY = 0.0f;
    private CompoundButton.OnCheckedChangeListener mOnCheckedChangeListener;
    private int mOnPosition = 0;
    private ViewGroup mSwitchThumbContainer;
    private ImageView mSwitchTrack;
    private TextView mText;
    private final ViewConfiguration mViewConfiguration;

    public Switch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mViewConfiguration = ViewConfiguration.get(context);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void changeState(MotionEvent motionEvent) {
        boolean bl = this.mIsChecked;
        if (motionEvent.getEventTime() - motionEvent.getDownTime() < (long)ViewConfiguration.getTapTimeout()) {
            if (!this.isMotionVertical(motionEvent.getY(), this.mLastDownY)) {
                bl = !this.mIsChecked;
            }
        } else {
            bl = false;
            int n = this.getCurrentSliderGripPositionX(motionEvent.getX(), this.mLastDownX);
            if (n + 0 <= this.mOnPosition - n) {
                bl = true;
            }
        }
        if (this.mIsChecked != bl) {
            this.mIsChecked = bl;
            this.updateIcon();
            this.setDefaultPosition();
            this.mOnCheckedChangeListener.onCheckedChanged(null, bl);
            return;
        }
        this.setDefaultPosition();
    }

    /*
     * Enabled aggressive block sorting
     */
    private int getCurrentSliderGripPositionX(float f, float f2) {
        int n = (int)(f - f2);
        n = this.mIsChecked ? this.mOnPosition - n : 0 - n;
        if (n > 0) {
            return 0;
        }
        int n2 = n;
        if (n >= this.mOnPosition) return n2;
        return this.mOnPosition;
    }

    private boolean isMotionVertical(float f, float f2) {
        boolean bl = false;
        if ((int)(f - f2) > this.mViewConfiguration.getScaledTouchSlop()) {
            bl = true;
        }
        return bl;
    }

    private void setDefaultPosition() {
        if (this.mIsChecked) {
            this.mSwitchThumbContainer.scrollTo(this.mOnPosition, 0);
            return;
        }
        this.mSwitchThumbContainer.scrollTo(0, 0);
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSwitchTrack = (ImageView)this.findViewById(R.id.switch_track);
        this.mSwitchThumbContainer = (ViewGroup)this.findViewById(R.id.switch_thumb_container);
        this.mText = (TextView)this.findViewById(R.id.switch_category);
    }

    @Override
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.isEnabled()) {
            return false;
        }
        switch (motionEvent.getAction()) {
            default: {
                return super.onTouchEvent(motionEvent);
            }
            case 0: {
                this.mIsTouched = true;
                this.updateIcon();
                this.mLastDownX = motionEvent.getX();
                this.mLastDownY = motionEvent.getY();
                return true;
            }
            case 2: {
                this.mIsTouched = true;
                int n = this.getCurrentSliderGripPositionX(motionEvent.getX(), this.mLastDownX);
                this.mSwitchThumbContainer.scrollTo(n, 0);
                return true;
            }
            case 1: 
            case 3: 
        }
        if (!this.mIsTouched) return true;
        this.mIsTouched = false;
        this.changeState(motionEvent);
        return true;
    }

    public void setChecked(boolean bl) {
        this.mIsChecked = bl;
        this.updateIcon();
        this.setDefaultPosition();
    }

    @Override
    public void setEnabled(boolean bl) {
        super.setEnabled(bl);
        if (this.isEnabled()) {
            this.mText.setTextColor(this.getResources().getColor(R.color.default_text_col));
            this.mSwitchTrack.clearColorFilter();
            return;
        }
        this.mText.setTextColor(this.getResources().getColor(R.color.grayout_text_col));
        this.mSwitchTrack.setColorFilter(1711276032);
    }

    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.mOnCheckedChangeListener = onCheckedChangeListener;
    }

    @Override
    public void setPressed(boolean bl) {
    }

    public void setText(CharSequence charSequence) {
        this.mText.setText(charSequence);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateIcon() {
        if (this.mIsChecked) {
            this.mSwitchTrack.setImageResource(R.drawable.cam_setting_dialog_item_switch_bg_on_icn);
        } else {
            this.mSwitchTrack.setImageResource(R.drawable.cam_setting_dialog_item_switch_bg_off_icn);
        }
        this.mOnPosition = - this.mSwitchTrack.getDrawable().getIntrinsicWidth() / 2;
    }
}

