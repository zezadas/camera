/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing.view;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.fastcapturing.view.FastViewFinder;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/*
 * Exception performing whole class analysis.
 */
public class FastCapturingParameterChanger
implements SettingChangerInterface<ParameterValue> {
    private ParameterKey mKey;
    private ParameterValue mValue;
    private FastViewFinder mViewFinder;

    public FastCapturingParameterChanger(ParameterKey var1, ParameterValue var2, FastViewFinder var3);

    @Override
    public void changeValue(TypedSettingItem<ParameterValue> var1);
}

