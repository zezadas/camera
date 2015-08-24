/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting;

import android.content.Context;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.values.AutoUpload;
import com.sonyericsson.cameracommon.commonsetting.values.BalloonTipsCounter;
import com.sonyericsson.cameracommon.commonsetting.values.DoNotShowAgainCheckForGeotagDialog;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.commonsetting.values.ShutterSound;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.commonsetting.values.VolumeKey;
import com.sonyericsson.cameracommon.settings.SettingKey;
import com.sonyericsson.cameracommon.utility.ResourceUtil;

public enum CommonSettingKey implements SettingKey
{
    AUTO_UPLOAD(R.string.cam_strings_auto_upload_all_title_txt, "auto_upload", AutoUpload.values()),
    GEO_TAG(R.string.cam_strings_geotagging_title_txt, "geo_tag", Geotag.values()),
    FAST_CAPTURE(R.string.cam_strings_fast_capturing_title_txt, "fast-capture", new FastCapture[]{FastCapture.LAUNCH_ONLY, FastCapture.LAUNCH_AND_CAPTURE, FastCapture.LAUNCH_AND_RECORDING, FastCapture.OFF}),
    TOUCH_CAPTURE(R.string.cam_strings_touch_capturing_title_txt, "touch_capture", TouchCapture.values()),
    SHUTTER_SOUND(R.string.cam_strings_camera_sound_txt, "shutter_sound", ShutterSound.values()),
    SAVE_DESTINATION(R.string.cam_strings_save_destination_title_txt, "storage", SaveDestination.values()),
    BALLOON_TIPS_COUNTER(R.string.cam_strings_balloon_tips_modeselector_title_txt, "balloon_tips_for_mode_selector", BalloonTipsCounter.values()),
    VOLUME_KEY(R.string.cam_strings_volumekey_txt, "volume_key", VolumeKey.values()),
    TERM_OF_USE(R.string.cam_strings_term_of_use_title_txt, "term_of_use", new CommonSettingValue[0]),
    TOUCH_BLOCK(-1, "touch_block", new CommonSettingValue[0]),
    DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG(-1, "do_not_show_again_check_for_geotag_dialog_value", DoNotShowAgainCheckForGeotagDialog.values());
    
    private String mKey;
    private int mTitleTextId;
    private CommonSettingValue[] mValues;

    private CommonSettingKey(int n2, String string2, CommonSettingValue[] arrcommonSettingValue) {
        this.mTitleTextId = n2;
        this.mKey = string2;
        this.mValues = arrcommonSettingValue;
    }

    public static CommonSettingKey fromKey(String string) {
        for (CommonSettingKey commonSettingKey : CommonSettingKey.values()) {
            if (!commonSettingKey.mKey.equals(string)) continue;
            return commonSettingKey;
        }
        return null;
    }

    public static CommonSettingValue fromValue(CommonSettingKey arrcommonSettingValue, String string) {
        for (CommonSettingValue commonSettingValue : arrcommonSettingValue.getValues()) {
            if (!commonSettingValue.toString().toUpperCase().equals(string.toUpperCase())) continue;
            return commonSettingValue;
        }
        return null;
    }

    public static String getValueFromProviderString(String string, CommonSettingKey arrcommonSettingValue) {
        for (CommonSettingValue commonSettingValue : arrcommonSettingValue.getValues()) {
            if (!string.equals(commonSettingValue.getProviderValue())) continue;
            return commonSettingValue.toString();
        }
        return null;
    }

    @Override
    public int getIconId() {
        return 0;
    }

    public String getKey() {
        return this.mKey;
    }

    @Override
    public int getTextId() {
        return 0;
    }

    public String getTitle(Context context) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey[this.ordinal()]) {
            default: {
                return null;
            }
            case 1: 
        }
        return ResourceUtil.getApplicationLabel(context, "com.sonymobile.touchblocker");
    }

    public int getTitleId() {
        return this.mTitleTextId;
    }

    public CommonSettingValue[] getValues() {
        return (CommonSettingValue[])this.mValues.clone();
    }

}

