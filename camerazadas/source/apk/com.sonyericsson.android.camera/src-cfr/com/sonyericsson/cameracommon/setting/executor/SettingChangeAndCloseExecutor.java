/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.executor;

import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

public class SettingChangeAndCloseExecutor<T>
extends SettingChangeExecutor<T> {
    private final SettingDialogController mSettingDialogController;

    public SettingChangeAndCloseExecutor(SettingChangerInterface<T> settingChangerInterface, SettingDialogController settingDialogController) {
        super(settingChangerInterface);
        this.mSettingDialogController = settingDialogController;
    }

    @Override
    public void onExecute(TypedSettingItem<T> typedSettingItem) {
        super.onExecute(typedSettingItem);
        this.mSettingDialogController.closeCurrentDialog();
    }
}

