/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import java.util.HashMap;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingsConverter {
    private static final Map<CommonSettingKey, ParameterKey> KEY_MAP;
    private static final String TAG;
    private static final Map<ParameterValue, CommonSettingValue> VALUE_MAP;

    static;

    public SettingsConverter();

    public static void convertAndApplyValue(CommonSettingKey var0, CommonSettingValue var1);

    public static CommonSettingValue getCommonSettingValue(ParameterValue var0);

    private static ParameterValue getParameterValue(CommonSettingValue var0);

}

