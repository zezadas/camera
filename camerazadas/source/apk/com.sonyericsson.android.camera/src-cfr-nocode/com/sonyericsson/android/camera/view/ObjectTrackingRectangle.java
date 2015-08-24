/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.view.SingleRectangle;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ObjectTrackingRectangle
extends SingleRectangle {
    private static final String TAG;

    static;

    public ObjectTrackingRectangle(ViewGroup var1);

    private void startObjectTrackingAnimation();

    @Override
    protected void deselect();

    @Override
    protected void init(LayoutInflater var1, View[] var2);

    @Override
    protected void onAfFail(AutoFocusListener.Result var1);

    @Override
    protected void onAfSuccess(AutoFocusListener.Result var1);

    @Override
    protected void onRecording(AutoFocusListener.Result var1);

    @Override
    protected void resetColor();

    @Override
    protected void select(Rect var1, boolean var2);

    @Override
    protected void setPosition(Rect[] var1);

    @Override
    protected void show();

}

