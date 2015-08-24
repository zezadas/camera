/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.onscreenbutton;

import android.graphics.Canvas;
import android.view.MotionEvent;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;

public interface OnScreenButtonListener {
    public void onCancel(OnScreenButton var1, MotionEvent var2);

    public void onDispatchDraw(OnScreenButton var1, Canvas var2);

    public void onDown(OnScreenButton var1, MotionEvent var2);

    public void onMove(OnScreenButton var1, MotionEvent var2);

    public void onUp(OnScreenButton var1, MotionEvent var2);
}

