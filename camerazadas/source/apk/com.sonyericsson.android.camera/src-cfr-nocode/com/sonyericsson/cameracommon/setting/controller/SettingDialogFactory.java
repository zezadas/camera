/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.controller;

import android.content.Context;
import android.view.View;
import com.sonyericsson.cameracommon.setting.controller.SettingLayoutCoordinatorFactory;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;

class SettingDialogFactory {
    SettingDialogFactory();

    public static SettingControlDialog createControl(Context var0, SettingLayoutCoordinatorFactory.LayoutCoordinateData var1);

    public static SettingTabDialogBasic createMenu(Context var0, SettingLayoutCoordinatorFactory.LayoutCoordinateData var1, int var2, int var3);

    public static SettingDialogBasic createSecondLayerDialog(Context var0, SettingLayoutCoordinatorFactory.LayoutCoordinateData var1, int var2, int var3);

    public static SettingDialogBasic createShortcutDialog(Context var0, SettingLayoutCoordinatorFactory.LayoutCoordinateData var1, int var2);

    private static View inflate(Context var0, int var1);
}

