/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.cameracommon.activity.BaseActivity;

public class AllEventListener
extends View {
    private static final String TAG = "AllEventListener";
    private WeakReference<BaseActivity> mBaseActivity;
    boolean mTouchEventConsumed = true;

    public AllEventListener(Context context) {
        super(context);
    }

    public AllEventListener(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AllEventListener(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    public void disableTouchEvent() {
        this.mTouchEventConsumed = true;
    }

    public void enableTouchEvent() {
        this.mTouchEventConsumed = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onTouchEvent(MotionEvent object) {
        super.onTouchEvent((MotionEvent)object);
        if (object == null) return this.mTouchEventConsumed;
        switch (object.getAction()) {
            default: {
                return this.mTouchEventConsumed;
            }
            case 0: 
        }
        object = this.mBaseActivity.get();
        if (object == null) return this.mTouchEventConsumed;
        object.restartAutoOffTimer();
        return this.mTouchEventConsumed;
    }

    public void setActivity(BaseActivity baseActivity) {
        if (baseActivity == null) {
            throw new IllegalArgumentException("BaseActivity can not be null.");
        }
        this.mBaseActivity = new WeakReference<BaseActivity>(baseActivity);
    }
}

