/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.BalloonTipsCounter;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.commonsetting.values.ShutterSound;
import com.sonyericsson.cameracommon.mediasaving.location.LocationSettingsReader;

public class PresetConfigurationResolver {
    public static final String Af_SUCCESS_FILE_PATH = "/system/media/audio/camera/common/af_success.m4a";
    public static final String KEY_SHUTTER_SOUND = "COMMON_PARAMS_SHUTTER_SOUND";
    public static final String RECORD_SOUND_FILE_PATH_ON = "/system/media/audio/ui/VideoRecord.ogg";
    public static final String SHUTTER_SOUND_FILE_PATH_OFF = "off";
    public static final String SHUTTER_SOUND_FILE_PATH_ON = "/system/media/audio/ui/camera_click.ogg";
    public static final String TAG = PresetConfigurationResolver.class.getSimpleName();
    public static final String VALUE_SHUTTER_SOUND_OFF = "OFF";
    public static final String VALUE_SHUTTER_SOUND_ON = "SOUND1";

    public static String getRecordSoundFilePath(boolean bl) {
        if (bl) {
            return "/system/media/audio/ui/VideoRecord.ogg";
        }
        return "off";
    }

    public static String getShutterSoundFilePath(BaseActivity baseActivity) {
        return PresetConfigurationResolver.getShutterSoundFilePath(PresetConfigurationResolver.isShutterSoundEnabled(baseActivity));
    }

    public static String getShutterSoundFilePath(boolean bl) {
        if (bl) {
            return "/system/media/audio/ui/camera_click.ogg";
        }
        return "off";
    }

    public static boolean isBalloonTipsEnabled(BaseActivity baseActivity) {
        return PresetConfigurationResolver.isBalloonTipsEnabled(baseActivity.getCommonSettings());
    }

    public static boolean isBalloonTipsEnabled(CommonSettings object) {
        if ((object = object.get(CommonSettingKey.BALLOON_TIPS_COUNTER)) == BalloonTipsCounter.DISPLAY_OK || object == BalloonTipsCounter.DISPLAY_OK_FIRST || object == BalloonTipsCounter.DISPLAY_OK_SECOND) {
            return true;
        }
        return false;
    }

    public static boolean isGeoTagEnabled(CommonSettingValue commonSettingValue, Context context) {
        if (commonSettingValue == Geotag.ON) {
            boolean bl = LocationSettingsReader.isLocationProviderAllowed(context, "gps");
            boolean bl2 = LocationSettingsReader.isLocationProviderAllowed(context, "network");
            if (bl || bl2) {
                return true;
            }
        }
        return false;
    }

    public static boolean isShutterSoundEnabled(BaseActivity baseActivity) {
        if (baseActivity.getCommonSettings().get(CommonSettingKey.SHUTTER_SOUND) == ShutterSound.OFF) {
            return false;
        }
        return true;
    }
}

