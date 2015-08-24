/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

public enum VolumeKey implements CommonSettingValue
{
    ZOOM(-1, R.string.cam_strings_volumekey_zoom_txt, "zoom"),
    VOLUME(-1, R.string.cam_strings_volumekey_volume_txt, "volume"),
    HW_CAMERA_KEY(-1, R.string.cam_strings_volumekey_shutter_txt, "HW_camera_key");
    
    private final int mIconId;
    private final String mSettingsSecureValue;
    private final int mTextId;

    private VolumeKey(int n2, int n3, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mSettingsSecureValue = string2;
    }

    @Override
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.VOLUME_KEY;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public String getProviderValue() {
        return this.mSettingsSecureValue;
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }
}

