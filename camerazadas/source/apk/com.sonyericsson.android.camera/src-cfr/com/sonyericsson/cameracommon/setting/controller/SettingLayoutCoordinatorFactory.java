/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.controller;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.ControlLayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.MenuLayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.SecondLayerLayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.ShortcutLayoutCoordinator;

class SettingLayoutCoordinatorFactory {
    SettingLayoutCoordinatorFactory() {
    }

    public static LayoutCoordinator createControlLayoutCoordinator(SettingControlDialog settingControlDialog, LayoutCoordinateData layoutCoordinateData) {
        return new ControlLayoutCoordinator(settingControlDialog, layoutCoordinateData.containerRect, layoutCoordinateData.anchorRect);
    }

    public static LayoutCoordinator createMenuLayoutCoordinator(SettingTabDialogBasic settingTabDialogBasic, LayoutCoordinateData layoutCoordinateData, int n) {
        return new MenuLayoutCoordinator(settingTabDialogBasic, layoutCoordinateData.containerRect, n);
    }

    public static LayoutCoordinator createSecondLayerLayoutCoordinator(SettingDialogBasic settingDialogBasic, LayoutCoordinateData layoutCoordinateData, int n, int n2) {
        return new SecondLayerLayoutCoordinator(settingDialogBasic, layoutCoordinateData.containerRect, layoutCoordinateData.anchorRect, n, n2);
    }

    public static LayoutCoordinator createShortcutLayoutCoordinator(SettingDialogBasic settingDialogBasic, LayoutCoordinateData layoutCoordinateData) {
        return new ShortcutLayoutCoordinator(settingDialogBasic, layoutCoordinateData.containerRect, layoutCoordinateData.anchorRect);
    }

    public static class LayoutCoordinateData {
        public final Rect anchorRect;
        public final Rect containerRect;

        public LayoutCoordinateData(Rect rect, Rect rect2) {
            this.containerRect = rect;
            this.anchorRect = rect2;
        }
    }

}

