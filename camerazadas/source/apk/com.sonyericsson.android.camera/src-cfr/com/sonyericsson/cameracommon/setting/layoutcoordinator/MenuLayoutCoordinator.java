/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinateUtil;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.MenuDialogRectCalculator;

public class MenuLayoutCoordinator
implements LayoutCoordinator {
    public Rect mDialogRect;
    private final MenuDialogRectCalculator mMenuDialogRectCalculator;
    private final SettingTabDialogBasic mView;

    public MenuLayoutCoordinator(SettingTabDialogBasic settingTabDialogBasic, Rect rect, int n) {
        this.mView = settingTabDialogBasic;
        this.mMenuDialogRectCalculator = new MenuDialogRectCalculator(settingTabDialogBasic.getContext(), rect, n, settingTabDialogBasic.numberOfTabs());
    }

    @Override
    public void coordinatePosition(int n) {
        Rect rect = new Rect(0, 0, this.mView.getLayoutParams().width, this.mView.getLayoutParams().height);
        this.mDialogRect = LayoutCoordinateUtil.coodinatePosition(n, this.mView, rect, rect, this.mMenuDialogRectCalculator.computePosition(n));
    }

    @Override
    public void coordinateSize(int n) {
        this.mView.setNumColumns(1);
        this.mView.getLayoutParams().width = this.mMenuDialogRectCalculator.computeWidth(n);
        this.mView.getLayoutParams().height = this.mMenuDialogRectCalculator.computeHeight(n);
    }

    @Override
    public Rect getDialogRect() {
        return this.mDialogRect;
    }
}

