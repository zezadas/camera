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
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MultiRectangles
extends FocusRectangleWithStateMachine {
    private static final String TAG;
    private final List<TaggedRectangle> mRectangles;

    static;

    public MultiRectangles(ViewGroup var1);

    @Override
    protected void deselect();

    @Override
    protected void finish();

    @Override
    protected void hide();

    public void init(LayoutInflater var1, int var2);

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
}

