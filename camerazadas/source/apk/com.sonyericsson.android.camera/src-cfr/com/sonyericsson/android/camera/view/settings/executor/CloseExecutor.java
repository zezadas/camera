/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

class CloseExecutor<T>
implements SettingExecutorInterface<T> {
    private final SettingExecutorInterface<T> mExecutor;
    private final SettingController mSettingController;

    public CloseExecutor(SettingController settingController, SettingExecutorInterface<T> settingExecutorInterface) {
        this.mSettingController = settingController;
        this.mExecutor = settingExecutorInterface;
    }

    @Override
    public void onExecute(TypedSettingItem<T> typedSettingItem) {
        this.mExecutor.onExecute(typedSettingItem);
        this.mSettingController.getSettingDialogStack().closeCurrentDialog();
    }
}

