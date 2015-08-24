/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

class ShutterSoundOnExecutor
extends SettingChangeExecutor<ParameterValue> {
    private final ExtendedActivity mActivity;
    private final int mType;

    public ShutterSoundOnExecutor(ExtendedActivity extendedActivity, int n, SettingChangerInterface<ParameterValue> settingChangerInterface) {
        super(settingChangerInterface);
        this.mActivity = extendedActivity;
        this.mType = n;
    }

    @Override
    public void onExecute(TypedSettingItem<ParameterValue> typedSettingItem) {
        super.onExecute(typedSettingItem);
        this.mActivity.getShutterToneGenerator().playActionSound(this.mType);
    }
}

