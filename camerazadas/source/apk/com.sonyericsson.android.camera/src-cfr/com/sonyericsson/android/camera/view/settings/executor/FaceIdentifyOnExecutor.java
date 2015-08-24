/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.launcher.ApplicationLauncher;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

class FaceIdentifyOnExecutor
extends SettingChangeExecutor<ParameterValue> {
    private ExtendedActivity mActivity;

    public FaceIdentifyOnExecutor(ExtendedActivity extendedActivity, SettingChangerInterface<ParameterValue> settingChangerInterface) {
        super(settingChangerInterface);
        this.mActivity = extendedActivity;
    }

    @Override
    public void onExecute(TypedSettingItem<ParameterValue> typedSettingItem) {
        super.onExecute(typedSettingItem);
        ApplicationLauncher.launchPhotoAnalyzer(this.mActivity);
    }
}

