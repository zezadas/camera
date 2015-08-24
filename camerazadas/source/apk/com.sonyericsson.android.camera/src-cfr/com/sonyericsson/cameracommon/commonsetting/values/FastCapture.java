/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

public enum FastCapture implements CommonSettingValue
{
    LAUNCH_AND_CAPTURE(-1, R.string.cam_strings_fast_capturing_launch_and_capture_photo_txt, 1, true, "photo-launch-and-capture"),
    LAUNCH_ONLY(-1, R.string.cam_strings_fast_capturing_launch_only_txt, 1, true, "photo-launch-only"),
    LAUNCH_AND_RECORDING(-1, R.string.cam_strings_fast_capturing_launch_and_capture_video_txt, 2, true, "video-launch-and-recording"),
    VIDEO_LAUNCH_ONLY(-1, R.string.cam_strings_fast_capturing_launch_only_video_txt, 2, true, "video-launch-only"),
    OFF(-1, R.string.cam_strings_settings_off_txt, 0, false, "off");
    
    private static final int sParameterTextId;
    private final int mIconId;
    private final boolean mIsFastCaptureOn;
    private final String mSettingsSecureValue;
    private final int mTextId;
    private final int mType;

    static {
        sParameterTextId = R.string.cam_strings_fast_capturing_txt;
    }

    private FastCapture(int n2, int n3, int n4, boolean bl, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mType = n4;
        this.mIsFastCaptureOn = bl;
        this.mSettingsSecureValue = string2;
    }

    public int getCameraType() {
        return this.mType;
    }

    @Override
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.FAST_CAPTURE;
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

    public int getParameterkeyTitleTextId() {
        return R.string.cam_strings_fast_capturing_title_txt;
    }

    @Override
    public String getProviderValue() {
        return this.mSettingsSecureValue;
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    public boolean isFastCaptureOn() {
        return this.mIsFastCaptureOn;
    }
}

