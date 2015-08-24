/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

public enum AutoUpload implements CommonSettingValue
{
    ON(-1, R.string.cam_strings_settings_on_txt, true, "on"),
    OFF(-1, R.string.cam_strings_settings_off_txt, false, "off");
    
    private static final int sParameterTextId;
    private final int mIconId;
    private final boolean mIsAutoUploadOn;
    private final String mProviderValue;
    private final int mTextId;

    static {
        sParameterTextId = R.string.cam_strings_auto_upload_all_txt;
    }

    private AutoUpload(int n2, int n3, Boolean bl, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mIsAutoUploadOn = bl;
        this.mProviderValue = string2;
    }

    @Override
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.AUTO_UPLOAD;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    public int getParameterKeyTextId() {
        return sParameterTextId;
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
        return this.mTextId;
    }

    public boolean isAutoUploadOn() {
        return this.mIsAutoUploadOn;
    }
}

