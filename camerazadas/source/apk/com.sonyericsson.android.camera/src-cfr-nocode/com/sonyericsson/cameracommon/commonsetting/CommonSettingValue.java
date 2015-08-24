/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.settings.SettingValue;

public interface CommonSettingValue
extends SettingValue {
    public CommonSettingKey getCommonSettingKey();

    public String getProviderValue();
}

