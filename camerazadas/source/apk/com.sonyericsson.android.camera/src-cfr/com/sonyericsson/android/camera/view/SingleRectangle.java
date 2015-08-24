/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.view.FocusRectangleWithStateMachine;
import com.sonyericsson.android.camera.view.FocusRectanglesManager;
import com.sonyericsson.cameracommon.focusview.CommonResources;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;

public class SingleRectangle
extends FocusRectangleWithStateMachine {
    private static final String TAG = SingleRectangle.class.getSimpleName();
    protected TaggedRectangle mRectangle;

    public SingleRectangle(ViewGroup viewGroup) {
        super(viewGroup);
    }

    @Override
    protected void deselect() {
    }

    @Override
    protected void finish() {
        this.mRectangle = null;
    }

    protected int getNormalIcon() {
        return CommonResources.SingleIndicator.NORMAL;
    }

    protected int getSuccessIcon() {
        return CommonResources.SingleIndicator.SUCCESS;
    }

    @Override
    protected void hide() {
        this.stopAnimation(this.mRectangle);
        this.mRectangle.setVisibility(4);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void init(LayoutInflater layoutInflater, View[] arrview) {
        if (this.mRectangle == null) {
            this.mRectangle = arrview != null ? (TaggedRectangle)arrview[0] : (TaggedRectangle)layoutInflater.inflate(2130903040, null);
            int n = this.mParentView.getContext().getResources().getDimensionPixelSize(2131492886);
            int n2 = this.mParentView.getContext().getResources().getDimensionPixelSize(2131492885);
            this.mParentView.addView(this.mRectangle);
            this.mRectangle.prepare(1);
            this.mRectangle.setRectImageSize(n2, n);
        }
    }

    @Override
    protected void onAfFail(AutoFocusListener.Result result) {
        this.startFadeoutAnimation(this.mRectangle);
    }

    @Override
    protected void onAfSuccess(AutoFocusListener.Result result) {
        this.mRectangle.changeRectangleResource(this.getSuccessIcon());
    }

    @Override
    protected void onRecording(AutoFocusListener.Result result) {
    }

    @Override
    protected void resetColor() {
        this.mRectangle.changeRectangleResource(this.getNormalIcon());
    }

    @Override
    protected void select(Rect rect, boolean bl) {
    }

    @Override
    protected void setPosition(Rect[] arrrect) {
        this.mRectangle.setRectCenter(arrrect[0].centerX(), arrrect[0].centerY());
    }

    @Override
    protected void setSurfaceSize(int n, int n2, int n3, boolean bl) {
        this.mRectangle.setSize(n, n2, bl);
    }

    @Override
    protected void show() {
        if (this.mState != FocusRectanglesManager.RectangleState.INACTIVE) {
            this.mRectangle.setVisibility(0);
            return;
        }
        this.hide();
    }

    public void showAsFrame() {
        this.mRectangle.setVisibility(0);
    }
}

