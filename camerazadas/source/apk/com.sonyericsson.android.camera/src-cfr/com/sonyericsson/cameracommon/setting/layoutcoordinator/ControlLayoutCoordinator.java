/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;

public class ControlLayoutCoordinator
implements LayoutCoordinator {
    private final Rect mAnchorRect;
    private final Rect mContainerRect;
    private final int mDialogHeight;
    public Rect mDialogRect;
    private final int mDialogWidth;
    private final SettingControlDialog mView;

    public ControlLayoutCoordinator(SettingControlDialog object, Rect rect, Rect rect2) {
        this.mView = object;
        this.mContainerRect = rect;
        this.mAnchorRect = rect2;
        object = object.getResources();
        this.mDialogWidth = object.getDimensionPixelSize(R.dimen.control_setting_dialog_width);
        this.mDialogHeight = object.getDimensionPixelSize(R.dimen.control_setting_dialog_height);
    }

    private void coordinatePositionPhone(int n) {
        this.mView.setX(this.mContainerRect.left);
        this.mView.setY((float)this.mContainerRect.top + (float)(this.mContainerRect.height() - this.mView.getLayoutParams().height) / 2.0f);
        this.mDialogRect = new Rect((int)this.mView.getX(), (int)this.mView.getY(), (int)this.mView.getX() + this.mView.getLayoutParams().width, (int)this.mView.getY() + this.mView.getLayoutParams().height);
    }

    private void coordinatePositionTablet(int n) {
        this.mView.setX(this.mContainerRect.left);
        this.mView.setY((float)(this.mContainerRect.top + this.mAnchorRect.centerY()) - (float)this.mView.getLayoutParams().height / 2.0f);
        this.mDialogRect = new Rect((int)this.mView.getX(), (int)this.mView.getY(), (int)this.mView.getX() + this.mView.getLayoutParams().width, (int)this.mView.getY() + this.mView.getLayoutParams().height);
    }

    @Override
    public void coordinatePosition(int n) {
        if (LayoutDependencyResolver.isTablet(this.mView.getContext())) {
            this.coordinatePositionTablet(n);
            return;
        }
        this.coordinatePositionPhone(n);
    }

    @Override
    public void coordinateSize(int n) {
        this.mView.getLayoutParams().width = this.mDialogWidth + this.mView.getPaddingLeft() + this.mView.getPaddingRight();
        this.mView.getLayoutParams().height = this.mDialogHeight + this.mView.getPaddingTop() + this.mView.getPaddingBottom();
    }

    @Override
    public Rect getDialogRect() {
        return this.mDialogRect;
    }
}

