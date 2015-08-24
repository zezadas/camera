/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.controller;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;

class SettingLayoutCoordinatorFactory {
    SettingLayoutCoordinatorFactory();

    public static LayoutCoordinator createControlLayoutCoordinator(SettingControlDialog var0, LayoutCoordinateData var1);

    public static LayoutCoordinator createMenuLayoutCoordinator(SettingTabDialogBasic var0, LayoutCoordinateData var1, int var2);

    public static LayoutCoordinator createSecondLayerLayoutCoordinator(SettingDialogBasic var0, LayoutCoordinateData var1, int var2, int var3);

    public static LayoutCoordinator createShortcutLayoutCoordinator(SettingDialogBasic var0, LayoutCoordinateData var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class LayoutCoordinateData {
        public final Rect anchorRect;
        public final Rect containerRect;

        public LayoutCoordinateData(Rect var1, Rect var2);
    }

}

