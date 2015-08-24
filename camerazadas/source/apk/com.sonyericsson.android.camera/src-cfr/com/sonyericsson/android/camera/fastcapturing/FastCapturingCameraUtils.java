/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.content.SharedPreferences;
import com.sonyericsson.android.camera.configuration.ParameterCategory;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class FastCapturingCameraUtils {
    private static final String TAG = FastCapturingCameraUtils.class.getSimpleName();

    private static CapturingMode getCapturingMode(SharedPreferences sharedPreferences, int n) {
        switch (n) {
            default: {
                CameraLogger.w(TAG, "CameraId[" + n + "] is not supported.");
                return CapturingMode.SCENE_RECOGNITION;
            }
            case 0: {
                return CapturingMode.SCENE_RECOGNITION;
            }
            case 1: 
        }
        return CapturingMode.convertFrom(sharedPreferences.getString("FRONT_FAST", CapturingMode.FRONT_PHOTO.name()), CapturingMode.FRONT_PHOTO);
    }

    public static boolean isSettingValueAvailableInSharedPreferences(SharedPreferences sharedPreferences, int n, int n2, ParameterKey parameterKey) {
        String string = SharedPreferencesUtil.createPrefix(parameterKey.getCategory(), FastCapturingCameraUtils.getCapturingMode(sharedPreferences, n2), "");
        if (sharedPreferences.getString(string + (Object)parameterKey, null) != null) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static <T extends ParameterValue> T loadParameter(SharedPreferences parameterValueHolder, int n, int n2, ParameterKey parameterKey, T t) {
        if (t == null) {
            throw new IllegalArgumentException("Default value cannot be null.");
        }
        if ((parameterValueHolder = FastCapturingCameraUtils.loadParameter(parameterValueHolder, n, n2, new ParameterValueHolder<T>(t))) == null || FastCapturingCameraUtils.shouldClearOnResume(parameterValueHolder.get())) {
            return t;
        }
        return parameterValueHolder.get();
    }

    public static <T extends ParameterValue> ParameterValueHolder<T> loadParameter(SharedPreferences object, int n, int n2, ParameterValueHolder<T> parameterValueHolder) {
        ParameterKey parameterKey = parameterValueHolder.get().getParameterKey();
        String string = SharedPreferencesUtil.createPrefix(parameterKey.getCategory(), FastCapturingCameraUtils.getCapturingMode((SharedPreferences)object, n2), "");
        if ((object = object.getString(string + (Object)parameterKey, null)) != null) {
            parameterValueHolder.parseValueString((String)object);
        }
        return parameterValueHolder;
    }

    public static boolean shouldClearOnResume(ParameterValue parameterValue) {
        if (parameterValue.getParameterKey() == ParameterKey.PHOTO_LIGHT || parameterValue == Flash.LED_ON) {
            return true;
        }
        return false;
    }

    public static <T extends ParameterValue> void storeCommonParameter(SharedPreferences sharedPreferences, ParameterValueHolder<T> object) {
        String string = SharedPreferencesUtil.createPrefix(ParameterCategory.COMMON, CapturingMode.UNKNOWN, null);
        string = string + (Object)object.get().getParameterKey();
        object = object.createValueString();
        sharedPreferences.edit().putString(string, (String)object).apply();
    }

    public static <T extends ParameterValue> void storeParameter(SharedPreferences sharedPreferences, int n, T object) {
        Object object2 = new ParameterValueHolder<T>(object);
        object2.set(object);
        String string = SharedPreferencesUtil.createPrefix(object.getParameterKey().getCategory(), FastCapturingCameraUtils.getCapturingMode(sharedPreferences, n), "");
        object = string + (Object)object.getParameterKey();
        object2 = object2.createValueString();
        sharedPreferences.edit().putString((String)object, (String)object2).apply();
    }
}

