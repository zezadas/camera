/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.onscreenbutton;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;

public class OnScreenButton
extends ImageView {
    public static final OnScreenButtonListener EMPTY_LISTENER;
    public static final Resource EMPTY_RESOURCE;
    private static final String TAG;
    private boolean mIsRotatable = true;
    private boolean mIsTouched = false;
    private OnScreenButtonListener mListener = EMPTY_LISTENER;
    private int mOrientation = 2;
    private Resource mResource = EMPTY_RESOURCE;
    private int mStaticOrientation = 0;

    static {
        TAG = OnScreenButton.class.getSimpleName();
        EMPTY_LISTENER = new OnScreenButtonListener(){

            @Override
            public void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            }

            @Override
            public void onDispatchDraw(OnScreenButton onScreenButton, Canvas canvas) {
            }

            @Override
            public void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            }

            @Override
            public void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            }

            @Override
            public void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent) {
            }
        };
        EMPTY_RESOURCE = new Resource(-1, -1, -1);
    }

    public OnScreenButton(Context context) {
        super(context);
        this.setFocusable(false);
        this.setFocusableInTouchMode(false);
        this.setOnClickListener(null);
    }

    public OnScreenButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setFocusable(false);
        this.setFocusableInTouchMode(false);
    }

    private boolean contains(MotionEvent motionEvent) {
        Rect rect = new Rect();
        if (this.getGlobalVisibleRect(rect)) {
            return rect.contains((int)motionEvent.getRawX(), (int)motionEvent.getRawY());
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void update() {
        int n = this.mOrientation == 2 ? this.mResource.landscape : this.mResource.portrait;
        if (n == -1) {
            this.setImageDrawable(null);
        } else {
            this.setImageResource(n);
        }
        if (this.mResource.description != -1) {
            this.setContentDescription((CharSequence)this.getContext().getResources().getString(this.mResource.description));
            return;
        }
        this.setContentDescription((CharSequence)"");
    }

    public void changeRotatability(int n, boolean bl) {
        this.mIsRotatable = bl;
        if (!bl) {
            this.mStaticOrientation = n;
        }
        this.setUiOrientation(n);
    }

    public void clearTouched() {
        this.mIsTouched = false;
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.mListener.onDispatchDraw(this, canvas);
    }

    public boolean isTouched() {
        return this.mIsTouched;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        switch (motionEvent.getAction()) {
            default: {
                return true;
            }
            case 0: {
                this.setPressed(true);
                this.mIsTouched = true;
                this.mListener.onDown(this, motionEvent);
                return true;
            }
            case 3: {
                this.setPressed(false);
                this.mIsTouched = false;
                this.mListener.onCancel(this, motionEvent);
                return true;
            }
            case 2: {
                if (this.contains(motionEvent)) {
                    this.mListener.onMove(this, motionEvent);
                    return true;
                }
                this.setPressed(false);
                this.mIsTouched = false;
                motionEvent.setAction(3);
                this.mListener.onCancel(this, motionEvent);
                return true;
            }
            case 1: 
        }
        if (this.contains(motionEvent) && this.mIsTouched && this.hasWindowFocus()) {
            this.setPressed(false);
            this.mIsTouched = true;
            this.mListener.onUp(this, motionEvent);
            return true;
        }
        this.setPressed(false);
        this.mIsTouched = false;
        motionEvent.setAction(3);
        this.mListener.onCancel(this, motionEvent);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void set(Resource resource) {
        this.mResource = resource == null ? EMPTY_RESOURCE : resource;
        this.update();
    }

    public void setListener(OnScreenButtonListener onScreenButtonListener) {
        if (onScreenButtonListener == null) {
            this.mListener = EMPTY_LISTENER;
            return;
        }
        this.mListener = onScreenButtonListener;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setUiOrientation(int n) {
        this.mOrientation = this.mIsRotatable ? n : this.mStaticOrientation;
        this.update();
    }

    public static class Resource {
        public static final int NONE = -1;
        final int description;
        final int landscape;
        final int portrait;

        public Resource(int n, int n2, int n3) {
            this.landscape = n;
            this.portrait = n2;
            this.description = n3;
        }
    }

}

