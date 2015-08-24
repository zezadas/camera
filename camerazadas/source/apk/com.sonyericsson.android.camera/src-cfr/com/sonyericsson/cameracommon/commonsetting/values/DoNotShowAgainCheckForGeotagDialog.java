/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

public enum DoNotShowAgainCheckForGeotagDialog implements CommonSettingValue
{
    CHECKED("checked"),
    NOT_CHECKED("not_checked");
    
    private final String mProviderValue;

    private DoNotShowAgainCheckForGeotagDialog(String string2) {
        this.mProviderValue = string2;
    }

    @Override
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG;
    }

    @Override
    public int getIconId() {
        return -1;
    }

    public int getParameterKeyTextId() {
        return -1;
    }

    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public String getProviderValue() {
        return this.mProviderValue;
    }

    @Override
    public int getTextId() {
        return -1;
    }
}

