/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

public enum ShutterSound implements CommonSettingValue
{
    ON(-1, R.string.cam_strings_settings_on_txt, true, "sound1/", "on"),
    OFF(-1, R.string.cam_strings_settings_off_txt, false, "sound0/", "off");
    
    private static final int sParameterTextId;
    private final String mDirectoryName;
    private final int mIconId;
    private final boolean mIsShutterSoundOn;
    private final String mProviderValue;
    private final int mTextId;

    static {
        sParameterTextId = R.string.cam_strings_camera_sound_txt;
    }

    private ShutterSound(int n2, int n3, boolean bl, String string2, String string3) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mIsShutterSoundOn = bl;
        this.mDirectoryName = string2;
        this.mProviderValue = string3;
    }

    @Override
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.SHUTTER_SOUND;
    }

    public String getDirectoryName() {
        return this.mDirectoryName;
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

    public boolean isShutterSoundOn() {
        return this.mIsShutterSoundOn;
    }
}

