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
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.view.FocusRectanglesManager;
import com.sonyericsson.android.camera.view.SingleRectangle;
import com.sonyericsson.cameracommon.focusview.CommonResources;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;

public class ObjectTrackingRectangle
extends SingleRectangle {
    private static final String TAG = ObjectTrackingRectangle.class.getSimpleName();

    public ObjectTrackingRectangle(ViewGroup viewGroup) {
        super(viewGroup);
    }

    private void startObjectTrackingAnimation() {
        AnimationSet animationSet = new AnimationSet(true);
        AnimationSet animationSet2 = (AnimationSet)AnimationUtils.loadAnimation(this.mParentView.getContext(), 2130968582);
        AnimationSet animationSet3 = (AnimationSet)AnimationUtils.loadAnimation(this.mParentView.getContext(), 2130968583);
        animationSet.addAnimation(animationSet2);
        animationSet.addAnimation(animationSet3);
        this.mRectangle.findViewById(2131689494).startAnimation(animationSet);
    }

    @Override
    protected void deselect() {
        if (this.mState != FocusRectanglesManager.RectangleState.INACTIVE) {
            this.mState = FocusRectanglesManager.RectangleState.DEFAULT;
        }
        this.hide();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void init(LayoutInflater layoutInflater, View[] arrview) {
        if (this.mRectangle == null) {
            this.mRectangle = arrview != null ? (TaggedRectangle)arrview[0] : (TaggedRectangle)layoutInflater.inflate(2130903040, null);
            int n = this.mParentView.getContext().getResources().getDimensionPixelSize(2131492892);
            int n2 = this.mParentView.getContext().getResources().getDimensionPixelSize(2131492891);
            this.mParentView.addView(this.mRectangle);
            this.mRectangle.prepare(3);
            this.mRectangle.setRectImageSize(n2, n);
        }
    }

    @Override
    protected void onAfFail(AutoFocusListener.Result result) {
        this.startFadeoutAnimation(this.mRectangle);
    }

    @Override
    protected void onAfSuccess(AutoFocusListener.Result result) {
        this.mRectangle.changeRectangleResource(CommonResources.ObjectIndicator.SUCCESS);
    }

    @Override
    protected void onRecording(AutoFocusListener.Result result) {
        this.mRectangle.changeRectangleResource(CommonResources.ObjectIndicator.SUCCESS);
    }

    @Override
    protected void resetColor() {
        this.mRectangle.changeRectangleResource(CommonResources.ObjectIndicator.TRACKING);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void select(Rect rect, boolean bl) {
        if (rect == null) {
            return;
        }
        switch (.$SwitchMap$com$sonyericsson$android$camera$view$FocusRectanglesManager$RectangleState[this.mState.ordinal()]) {
            case 1: 
            case 2: {
                this.mState = FocusRectanglesManager.RectangleState.SELECTED;
                this.mRectangle.setRectCenter(rect.centerX(), rect.centerY());
            }
        }
        if (bl) {
            this.startObjectTrackingAnimation();
            return;
        }
        this.show();
    }

    @Override
    protected void setPosition(Rect[] arrrect) {
        this.mRectangle.setRectCenter(arrrect[0].centerX(), arrrect[0].centerY());
        this.show();
    }

    @Override
    protected void show() {
        if (this.mState == FocusRectanglesManager.RectangleState.SELECTED) {
            this.mRectangle.setVisibility(0);
        }
    }

}

