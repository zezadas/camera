/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.graphics.Point;

public interface FocusActionListener {
    public void onCanceled();

    public void onFaceSelected(Point var1);

    public void onLongPressed();

    public void onReleased();

    public void onTouched();
}

