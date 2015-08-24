/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.controller;

import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;

public interface SettingDialogListener {
    public void onCloseSettingDialog(SettingDialogStack var1, boolean var2);

    public void onOpenSettingDialog(SettingDialogStack var1, boolean var2, boolean var3);
}

