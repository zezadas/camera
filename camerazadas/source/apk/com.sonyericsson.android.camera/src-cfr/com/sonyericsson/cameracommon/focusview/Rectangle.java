/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.CommonUtility;

public class Rectangle
extends RelativeLayout
implements GestureDetector.OnGestureListener {
    private static final String TAG = "Rectangles";
    private GestureDetector mGestureDetector;
    private RectangleOnTouchListener mRectangleOnTouchListener;

    public Rectangle(Context context) {
        super(context);
    }

    public Rectangle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Rectangle(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    private GestureDetector getGestureDetector() {
        if (this.mGestureDetector == null) {
            this.mGestureDetector = new GestureDetector(this.getContext(), this);
        }
        return this.mGestureDetector;
    }

    public void changeChildBackgroundResource(int n) {
        View view = this.findViewById(R.id.rect_image);
        if (view.getVisibility() != 8) {
            view.setBackgroundResource(n);
        }
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    @Override
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override
    public void onLongPress(MotionEvent motionEvent) {
        synchronized (this) {
            if (this.mRectangleOnTouchListener != null) {
                this.mRectangleOnTouchListener.onRectTouchLongPress(motionEvent);
            }
            return;
        }
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
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        // MONITORENTER : this
        super.onTouchEvent(motionEvent);
        this.getGestureDetector().onTouchEvent(motionEvent);
        boolean bl = false;
        if (this.mRectangleOnTouchListener != null) {
            bl = true;
        }
        int n = motionEvent.getAction();
        switch (n) {
            case 0: {
                if (this.mRectangleOnTouchListener == null) return bl;
                {
                    this.mRectangleOnTouchListener.onRectTouchDown(this, motionEvent);
                }
            }
            default: {
                return bl;
            }
            case 1: 
        }
        if (this.mRectangleOnTouchListener != null) {
            if (CommonUtility.isEventContainedInView(this, motionEvent)) {
                this.mRectangleOnTouchListener.onRectTouchUp(this, motionEvent);
                return bl;
            }
        } else {
            // MONITOREXIT : this
            return bl;
        }
        this.mRectangleOnTouchListener.onRectTouchCancel(this, motionEvent);
        return bl;
    }

    public void setRectangleOnTouchListener(RectangleOnTouchListener rectangleOnTouchListener) {
        synchronized (this) {
            this.mRectangleOnTouchListener = rectangleOnTouchListener;
            return;
        }
    }

    public static interface RectangleOnTouchListener {
        public void onRectTouchCancel(View var1, MotionEvent var2);

        public void onRectTouchDown(View var1, MotionEvent var2);

        public void onRectTouchLongPress(MotionEvent var1);

        public void onRectTouchUp(View var1, MotionEvent var2);
    }

}

