/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;

public class ShortcutLayoutCoordinator
implements LayoutCoordinator {
    private final Rect mAnchorRect;
    private final Rect mContainerRect;
    private int mDialogHeight;
    public Rect mDialogRect;
    private int mDialogWidth;
    private final boolean mIsTablet;
    private final int mMaxHeightMargin;
    private final SettingDialogBasic mView;

    /*
     * Enabled aggressive block sorting
     */
    public ShortcutLayoutCoordinator(SettingDialogBasic object, Rect rect, Rect rect2) {
        this.mView = object;
        this.mContainerRect = rect;
        this.mAnchorRect = rect2;
        this.mIsTablet = LayoutDependencyResolver.isTablet(this.mView.getContext());
        object = this.mView.getContext().getResources();
        int n = this.mIsTablet ? object.getDimensionPixelSize(R.dimen.setting_dialog_menu_max_height_margin_tablet) : object.getDimensionPixelSize(R.dimen.setting_dialog_menu_max_height_margin_phone);
        this.mMaxHeightMargin = n;
    }

    private void coordinatePositionPhone(int n) {
        this.mView.setPivotX(0.0f);
        this.mView.setPivotY(0.0f);
        this.mView.setRotation(RotationUtil.getAngle(n));
        if (this.isPortrait(n)) {
            n = this.mContainerRect.left;
            int n2 = (int)((float)(this.mContainerRect.top + this.mDialogWidth) + (float)(this.mContainerRect.height() - this.mDialogWidth) / 2.0f);
            this.mView.setLeft(n);
            this.mView.setRight(this.mDialogWidth + n);
            this.mView.setTop(n2);
            this.mView.setBottom(this.mDialogHeight + n2);
            this.mDialogRect = new Rect((int)this.mView.getX(), (int)this.mView.getY() - this.mDialogWidth, (int)this.mView.getX() + this.mDialogHeight, (int)this.mView.getY());
            return;
        }
        n = this.mContainerRect.left;
        int n3 = (int)((float)this.mContainerRect.top + (float)(this.mContainerRect.height() - this.mDialogHeight) / 2.0f);
        this.mView.setLeft(n);
        this.mView.setRight(this.mDialogWidth + n);
        this.mView.setTop(n3);
        this.mView.setBottom(this.mDialogHeight + n3);
        this.mDialogRect = new Rect((int)this.mView.getX(), (int)this.mView.getY(), (int)this.mView.getX() + this.mDialogWidth, (int)this.mView.getY() + this.mDialogHeight);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void coordinatePositionTablet(int n) {
        int n2 = LayoutDependencyResolver.getLeftItemCount(this.mView.getContext());
        int n3 = this.mView.getContext().getResources().getDimensionPixelSize(R.dimen.shortcut_dialog_item_height);
        int n4 = (this.mContainerRect.height() / n2 - n3) / 2;
        this.mView.setPivotX(0.0f);
        this.mView.setPivotY(0.0f);
        if (this.isPortrait(n)) {
            int n5 = this.mContainerRect.left;
            n3 = (int)((float)(this.mContainerRect.top + this.mAnchorRect.centerY()) + (float)this.mDialogWidth / 2.0f);
            if (n3 < this.mContainerRect.top + n4 + this.mDialogWidth) {
                n2 = this.mContainerRect.top + n4 + this.mDialogWidth;
            } else {
                n2 = n3;
                if (this.mDialogWidth + n3 > this.mContainerRect.bottom - n4 + this.mDialogWidth) {
                    n2 = this.mContainerRect.bottom - n4 - this.mDialogWidth + this.mDialogWidth;
                }
            }
            this.mView.setLeft(n5);
            this.mView.setRight(this.mDialogWidth + n5);
            this.mView.setTop(n2);
            this.mView.setBottom(this.mDialogHeight + n2);
            this.mDialogRect = new Rect((int)this.mView.getX(), (int)this.mView.getY() - this.mDialogWidth, (int)this.mView.getX() + this.mDialogHeight, (int)this.mView.getY());
        } else {
            int n6 = this.mContainerRect.left;
            n3 = (int)((float)(this.mContainerRect.top + this.mAnchorRect.centerY()) - (float)this.mDialogHeight / 2.0f);
            if (n3 < this.mContainerRect.top + n4) {
                n2 = this.mContainerRect.top + n4;
            } else {
                n2 = n3;
                if (this.mDialogHeight + n3 > this.mContainerRect.bottom - n4) {
                    n2 = this.mContainerRect.bottom - n4 - this.mDialogHeight;
                }
            }
            this.mView.setLeft(n6);
            this.mView.setRight(this.mDialogWidth + n6);
            this.mView.setTop(n2);
            this.mView.setBottom(this.mDialogHeight + n2);
            this.mDialogRect = new Rect((int)this.mView.getX(), (int)this.mView.getY(), (int)this.mView.getX() + this.mDialogWidth, (int)this.mView.getY() + this.mDialogHeight);
        }
        this.mView.setRotation(RotationUtil.getAngle(n));
    }

    private boolean isPortrait(int n) {
        if (n == 1) {
            return true;
        }
        return false;
    }

    @Override
    public void coordinatePosition(int n) {
        if (this.mIsTablet) {
            this.coordinatePositionTablet(n);
            return;
        }
        this.coordinatePositionPhone(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void coordinateSize(int n) {
        ViewGroup.LayoutParams layoutParams = this.mView.getLayoutParams();
        int n2 = this.isPortrait(n) ? this.mContainerRect.width() : this.mContainerRect.height();
        if (!(this.mView.computeHeight(1) <= (n2-=this.mMaxHeightMargin) || this.isPortrait(n))) {
            this.mView.setNumColumns(2);
            n = this.mView.getNumRows(n2);
            layoutParams.height = Math.min(this.mView.computeMaxHeight(n), this.mView.computeHeight(2));
            layoutParams.width = this.mView.computeWidth(2);
        } else {
            this.mView.setNumColumns(1);
            n = this.mView.getNumRows(n2);
            layoutParams.height = Math.min(this.mView.computeMaxHeight(n), this.mView.computeHeight(1));
            layoutParams.width = this.mView.computeWidth(1);
        }
        this.mDialogWidth = layoutParams.width;
        this.mDialogHeight = layoutParams.height;
    }

    @Override
    public Rect getDialogRect() {
        return this.mDialogRect;
    }
}

