/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.view.FocusRectangleWithStateMachine;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SingleRectangle
extends FocusRectangleWithStateMachine {
    private static final String TAG;
    protected TaggedRectangle mRectangle;

    static;

    public SingleRectangle(ViewGroup var1);

    @Override
    protected void deselect();

    @Override
    protected void finish();

    protected int getNormalIcon();

    protected int getSuccessIcon();

    @Override
    protected void hide();

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
    protected void setSurfaceSize(int var1, int var2, int var3, boolean var4);

    @Override
    protected void show();

    public void showAsFrame();
}

