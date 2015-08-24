/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.onscreenbutton;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OnScreenButton
extends ImageView {
    public static final OnScreenButtonListener EMPTY_LISTENER;
    public static final Resource EMPTY_RESOURCE;
    private static final String TAG;
    private boolean mIsRotatable;
    private boolean mIsTouched;
    private OnScreenButtonListener mListener;
    private int mOrientation;
    private Resource mResource;
    private int mStaticOrientation;

    static;

    public OnScreenButton(Context var1);

    public OnScreenButton(Context var1, AttributeSet var2);

    private boolean contains(MotionEvent var1);

    private void update();

    public void changeRotatability(int var1, boolean var2);

    public void clearTouched();

    @Override
    public void dispatchDraw(Canvas var1);

    public boolean isTouched();

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    public void set(Resource var1);

    public void setListener(OnScreenButtonListener var1);

    public void setUiOrientation(int var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Resource {
        public static final int NONE = -1;
        final int description;
        final int landscape;
        final int portrait;

        public Resource(int var1, int var2, int var3);
    }

}

