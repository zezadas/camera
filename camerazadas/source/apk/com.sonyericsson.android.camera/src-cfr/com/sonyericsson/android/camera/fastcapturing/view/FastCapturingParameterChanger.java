/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing.view;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.fastcapturing.view.FastViewFinder;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

public class FastCapturingParameterChanger
implements SettingChangerInterface<ParameterValue> {
    private ParameterKey mKey;
    private ParameterValue mValue;
    private FastViewFinder mViewFinder;

    public FastCapturingParameterChanger(ParameterKey parameterKey, ParameterValue parameterValue, FastViewFinder fastViewFinder) {
        this.mKey = parameterKey;
        this.mValue = parameterValue;
        this.mViewFinder = fastViewFinder;
    }

    @Override
    public void changeValue(TypedSettingItem<ParameterValue> typedSettingItem) {
        this.mViewFinder.onSettingValueChanged(this.mKey, this.mValue);
    }
}

