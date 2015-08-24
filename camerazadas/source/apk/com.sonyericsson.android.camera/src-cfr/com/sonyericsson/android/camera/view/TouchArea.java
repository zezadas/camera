/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

public class TouchArea
extends RelativeLayout {
    private static final String TAG = TouchArea.class.getSimpleName();
    private boolean mIsCanceled;
    private View.OnTouchListener mListener;
    private Rect mTouchArea;

    public TouchArea(Context context) {
        this(context, null);
    }

    public TouchArea(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TouchArea(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    public boolean contains(MotionEvent motionEvent) {
        int n = (int)motionEvent.getRawX();
        int n2 = (int)motionEvent.getRawY();
        boolean bl = false;
        if (this.mTouchArea != null) {
            bl = this.mTouchArea.contains(n, n2);
        }
        return bl;
    }

    public Rect getTouchAreaRect() {
        return this.mTouchArea;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onTouchEvent(MotionEvent var1_1) {
        var3_2 = super.onTouchEvent(var1_1);
        switch (var1_1.getAction()) {
            case 0: {
                this.mIsCanceled = false;
                if (!this.contains(var1_1)) {
                    return var3_2;
                }
            }
            default: {
                ** GOTO lbl15
            }
            case 1: 
            case 2: 
        }
        if (this.mIsCanceled) {
            return true;
        }
        if (!this.contains(var1_1)) {
            this.mIsCanceled = true;
            var1_1.setAction(3);
        }
lbl15: // 4 sources:
        var2_3 = var3_2;
        if (this.mListener == null) return var2_3;
        var2_3 = var3_2;
        if (this.mListener.onTouch(this, var1_1) == false) return var2_3;
        return true;
    }

    public void setSurfaceArea(Rect rect) {
        int n = this.getResources().getDimensionPixelSize(2131492880);
        this.mTouchArea = new Rect(rect.left + n, rect.top + n, rect.right - n, rect.bottom - n);
    }

    public void setTocuhAreaListener(View.OnTouchListener onTouchListener) {
        this.mListener = onTouchListener;
    }
}

