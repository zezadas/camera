/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import com.sonyericsson.android.camera.controller.CameraFunctions;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TouchFocus {
    private static final String TAG;
    private final CameraFunctions mController;
    private Rect mLastPosition;

    static;

    public TouchFocus(CameraFunctions var1);

    private void setFocusPosition(Rect var1, boolean var2);

    private void setLastPosition(Rect var1);

    public void clear();

    public void finish(Rect var1);

    public Rect getLastPosition();

    public void hideTouchFocusRectangle();

    public void setFocusPosition(Rect var1);

    public void singleTapUp(Rect var1);

    public void start(Rect var1);

    public void updateTouchFocusRectangle(Rect var1);
}

