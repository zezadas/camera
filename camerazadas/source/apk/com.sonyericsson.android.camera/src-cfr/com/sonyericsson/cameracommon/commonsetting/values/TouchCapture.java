/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

public enum TouchCapture implements CommonSettingValue
{
    ON(-1, R.string.cam_strings_settings_on_txt, true, "on"),
    OFF(-1, R.string.cam_strings_settings_off_txt, false, "off");
    
    private static final int sParameterTextId;
    private final int mIconId;
    private final boolean mIsTouchCaptureOn;
    private final String mProviderValue;
    private final int mTextId;

    static {
        sParameterTextId = R.string.cam_strings_touch_capturing_title_txt;
    }

    private TouchCapture(int n2, int n3, boolean bl, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mIsTouchCaptureOn = bl;
        this.mProviderValue = string2;
    }

    @Override
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.TOUCH_CAPTURE;
    }

    public int getCommonSettingKeyTextId() {
        return sParameterTextId;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
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

    public boolean isTouchCaptureOn() {
        return this.mIsTouchCaptureOn;
    }
}

