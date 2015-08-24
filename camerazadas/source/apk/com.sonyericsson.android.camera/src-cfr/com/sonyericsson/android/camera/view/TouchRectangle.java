/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import com.sonyericsson.android.camera.view.FocusRectanglesManager;
import com.sonyericsson.android.camera.view.SingleRectangle;
import com.sonyericsson.cameracommon.focusview.CommonResources;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;

public class TouchRectangle
extends SingleRectangle {
    private final AnimationSet mFocusTouchDownAnimation;
    private final AnimationSet mFocusTouchUpAnimation;

    public TouchRectangle(ViewGroup viewGroup) {
        super(viewGroup);
        this.mFocusTouchDownAnimation = (AnimationSet)AnimationUtils.loadAnimation(this.mParentView.getContext(), 2130968582);
        this.mFocusTouchUpAnimation = (AnimationSet)AnimationUtils.loadAnimation(this.mParentView.getContext(), 2130968583);
    }

    @Override
    protected void deselect() {
        if (this.mState != FocusRectanglesManager.RectangleState.INACTIVE) {
            this.mState = FocusRectanglesManager.RectangleState.DEFAULT;
        }
        this.hide();
    }

    @Override
    protected int getNormalIcon() {
        return CommonResources.TouchIndicator.NORMAL;
    }

    @Override
    protected int getSuccessIcon() {
        return CommonResources.TouchIndicator.SUCCESS;
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
            default: {
                break;
            }
            case 1: 
            case 2: 
            case 3: {
                this.mState = FocusRectanglesManager.RectangleState.SELECTED;
                this.mRectangle.setRectCenter(rect.centerX(), rect.centerY());
            }
        }
        if (bl) {
            this.mRectangle.findViewById(2131689494).startAnimation(this.mFocusTouchDownAnimation);
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

    public void startTouchUpAnimation(Rect rect, boolean bl) {
        if (rect == null) {
            return;
        }
        if (bl) {
            this.setPosition(new Rect[]{rect});
            this.mRectangle.findViewById(2131689494).startAnimation(this.mFocusTouchUpAnimation);
            return;
        }
        this.hide();
    }

}

