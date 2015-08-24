/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PresetConfigurationResolver {
    public static final String Af_SUCCESS_FILE_PATH = "/system/media/audio/camera/common/af_success.m4a";
    public static final String KEY_SHUTTER_SOUND = "COMMON_PARAMS_SHUTTER_SOUND";
    public static final String RECORD_SOUND_FILE_PATH_ON = "/system/media/audio/ui/VideoRecord.ogg";
    public static final String SHUTTER_SOUND_FILE_PATH_OFF = "off";
    public static final String SHUTTER_SOUND_FILE_PATH_ON = "/system/media/audio/ui/camera_click.ogg";
    public static final String TAG;
    public static final String VALUE_SHUTTER_SOUND_OFF = "OFF";
    public static final String VALUE_SHUTTER_SOUND_ON = "SOUND1";

    static;

    public PresetConfigurationResolver();

    public static String getRecordSoundFilePath(boolean var0);

    public static String getShutterSoundFilePath(BaseActivity var0);

    public static String getShutterSoundFilePath(boolean var0);

    public static boolean isBalloonTipsEnabled(BaseActivity var0);

    public static boolean isBalloonTipsEnabled(CommonSettings var0);

    public static boolean isGeoTagEnabled(CommonSettingValue var0, Context var1);

    public static boolean isShutterSoundEnabled(BaseActivity var0);
}

