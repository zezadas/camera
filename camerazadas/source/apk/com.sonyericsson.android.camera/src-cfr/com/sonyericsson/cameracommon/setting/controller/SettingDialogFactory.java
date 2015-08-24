/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.controller;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.controller.SettingLayoutCoordinatorFactory;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasicParams;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;

class SettingDialogFactory {
    SettingDialogFactory() {
    }

    public static SettingControlDialog createControl(Context object, SettingLayoutCoordinatorFactory.LayoutCoordinateData layoutCoordinateData) {
        object = (SettingControlDialog)SettingDialogFactory.inflate((Context)object, R.layout.setting_dialog_control);
        object.setLayoutCoordinator(SettingLayoutCoordinatorFactory.createControlLayoutCoordinator((SettingControlDialog)object, layoutCoordinateData));
        return object;
    }

    public static SettingTabDialogBasic createMenu(Context object, SettingLayoutCoordinatorFactory.LayoutCoordinateData layoutCoordinateData, int n, int n2) {
        object = (SettingTabDialogBasic)SettingDialogFactory.inflate((Context)object, R.layout.setting_dialog_menu);
        object.setNumberOfTabs(n2);
        object.setLayoutCoordinator(SettingLayoutCoordinatorFactory.createMenuLayoutCoordinator((SettingTabDialogBasic)object, layoutCoordinateData, n));
        return object;
    }

    public static SettingDialogBasic createSecondLayerDialog(Context object, SettingLayoutCoordinatorFactory.LayoutCoordinateData layoutCoordinateData, int n, int n2) {
        object = (SettingDialogBasic)SettingDialogFactory.inflate((Context)object, R.layout.setting_dialog_basic);
        object.setSettingDialogParams(SettingDialogBasicParams.SECOND_LAYER_DIALOG_SINGLE_ITEM_PARAMS);
        object.setLayoutCoordinator(SettingLayoutCoordinatorFactory.createSecondLayerLayoutCoordinator((SettingDialogBasic)object, layoutCoordinateData, n, n2));
        return object;
    }

    public static SettingDialogBasic createShortcutDialog(Context object, SettingLayoutCoordinatorFactory.LayoutCoordinateData layoutCoordinateData, int n) {
        object = (SettingDialogBasic)SettingDialogFactory.inflate((Context)object, R.layout.setting_dialog_basic);
        object.setSettingDialogParams(SettingDialogBasicParams.SHORTCUT_DIALOG_PARAMS);
        object.setLayoutCoordinator(SettingLayoutCoordinatorFactory.createShortcutLayoutCoordinator((SettingDialogBasic)object, layoutCoordinateData));
        if (n != 0) {
            object.setTitle(n);
        }
        return object;
    }

    private static View inflate(Context context, int n) {
        return ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(n, null);
    }
}

