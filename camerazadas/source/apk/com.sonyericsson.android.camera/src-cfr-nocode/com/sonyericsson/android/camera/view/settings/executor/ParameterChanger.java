/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/*
 * Exception performing whole class analysis.
 */
class ParameterChanger
implements SettingChangerInterface<ParameterValue> {
    private final ParameterManager mParameterManager;
    private final SettingController mSettingController;

    public ParameterChanger(ParameterManager var1, SettingController var2);

    @Override
    public void changeValue(TypedSettingItem<ParameterValue> var1);
}

