/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.view.FocusRectanglesManager;
import com.sonyericsson.cameracommon.focusview.FocusRectangle;

public abstract class FocusRectangleWithStateMachine
extends FocusRectangle {
    private static final String TAG = FocusRectangleWithStateMachine.class.getSimpleName();
    protected FocusRectanglesManager.RectangleState mState = FocusRectanglesManager.RectangleState.INACTIVE;

    public FocusRectangleWithStateMachine(ViewGroup viewGroup) {
        super(viewGroup);
    }

    protected abstract void deselect();

    protected abstract void hide();

    protected abstract void init(LayoutInflater var1, View[] var2);

    protected abstract void onAfFail(AutoFocusListener.Result var1);

    protected abstract void onAfSuccess(AutoFocusListener.Result var1);

    protected abstract void onRecording(AutoFocusListener.Result var1);

    protected abstract void resetColor();

    protected abstract void select(Rect var1, boolean var2);

    protected abstract void setPosition(Rect[] var1);

    protected void setState(FocusRectanglesManager.RectangleState rectangleState) {
        this.mState = rectangleState;
    }

    protected abstract void setSurfaceSize(int var1, int var2, int var3, boolean var4);

    protected abstract void show();
}

