/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.LocalGoogleAnalyticsUtil;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

class ParameterChanger
implements SettingChangerInterface<ParameterValue> {
    private final ParameterManager mParameterManager;
    private final SettingController mSettingController;

    public ParameterChanger(ParameterManager parameterManager, SettingController settingController) {
        this.mParameterManager = parameterManager;
        this.mSettingController = settingController;
    }

    @Override
    public void changeValue(TypedSettingItem<ParameterValue> typedSettingItem) {
        ParameterValue parameterValue = this.mParameterManager.get(typedSettingItem.getData().getParameterKey());
        this.mParameterManager.set(typedSettingItem.getData());
        this.mSettingController.updateSettingMenu(false);
        LocalGoogleAnalyticsUtil.getInstance().setSettingsValue(parameterValue, typedSettingItem.getData(), this.mParameterManager.getParameters().capturingMode);
    }
}

