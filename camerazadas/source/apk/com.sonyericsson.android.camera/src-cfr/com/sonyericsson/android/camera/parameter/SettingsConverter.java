/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;
import com.sonyericsson.android.camera.parameter.CommonParams;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.values.AutoUpload;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.commonsetting.values.ShutterSound;
import com.sonyericsson.cameracommon.commonsetting.values.TouchBlock;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SettingsConverter {
    private static final Map<CommonSettingKey, ParameterKey> KEY_MAP;
    private static final String TAG;
    private static final Map<ParameterValue, CommonSettingValue> VALUE_MAP;

    static {
        TAG = SettingsConverter.class.getSimpleName();
        KEY_MAP = new HashMap<CommonSettingKey, ParameterKey>(){};
        VALUE_MAP = new HashMap<ParameterValue, CommonSettingValue>(){};
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static void convertAndApplyValue(CommonSettingKey parameterValueHolder, CommonSettingValue object) {
        if (parameterValueHolder == null) return;
        if (object == null) {
            return;
        }
        Object var2_2 = null;
        ParameterKey parameterKey = KEY_MAP.get(parameterValueHolder);
        if (parameterKey == null) return;
        Iterator iterator = CommonParams.getInstance().values().iterator();
        do {
            parameterValueHolder = var2_2;
        } while (iterator.hasNext() && !parameterKey.equals((Object)(parameterValueHolder = iterator.next()).get().getParameterKey()));
        if (parameterValueHolder == null) return;
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
            default: {
                CameraLogger.e(TAG, "this key is not common value.");
                return;
            }
            case 1: {
                parameterValueHolder.set((com.sonyericsson.android.camera.configuration.parameters.AutoUpload)((com.sonyericsson.android.camera.configuration.parameters.AutoUpload)SettingsConverter.getParameterValue((CommonSettingValue)object)));
                return;
            }
            case 2: {
                object = (DestinationToSave)SettingsConverter.getParameterValue((CommonSettingValue)object);
                parameterValueHolder.set((ParameterValue)object.getRecommendedValue(DestinationToSave.getOptions(), (ParameterValue)object));
                return;
            }
            case 3: {
                parameterValueHolder.set((com.sonyericsson.android.camera.configuration.parameters.FastCapture)((com.sonyericsson.android.camera.configuration.parameters.FastCapture)SettingsConverter.getParameterValue((CommonSettingValue)object)));
                return;
            }
            case 4: {
                parameterValueHolder.set((com.sonyericsson.android.camera.configuration.parameters.Geotag)((com.sonyericsson.android.camera.configuration.parameters.Geotag)SettingsConverter.getParameterValue((CommonSettingValue)object)));
                return;
            }
            case 5: {
                parameterValueHolder.set((com.sonyericsson.android.camera.configuration.parameters.ShutterSound)((com.sonyericsson.android.camera.configuration.parameters.ShutterSound)SettingsConverter.getParameterValue((CommonSettingValue)object)));
                return;
            }
            case 6: {
                parameterValueHolder.set((com.sonyericsson.android.camera.configuration.parameters.TouchCapture)((com.sonyericsson.android.camera.configuration.parameters.TouchCapture)SettingsConverter.getParameterValue((CommonSettingValue)object)));
                return;
            }
            case 7: {
                parameterValueHolder.set((VolumeKey)((VolumeKey)SettingsConverter.getParameterValue((CommonSettingValue)object)));
                return;
            }
            case 8: 
        }
        parameterValueHolder.set((com.sonyericsson.android.camera.configuration.parameters.TouchBlock)((com.sonyericsson.android.camera.configuration.parameters.TouchBlock)SettingsConverter.getParameterValue((CommonSettingValue)object)));
    }

    public static CommonSettingValue getCommonSettingValue(ParameterValue parameterValue) {
        if (parameterValue == null) {
            return null;
        }
        return VALUE_MAP.get(parameterValue);
    }

    private static ParameterValue getParameterValue(CommonSettingValue commonSettingValue) {
        for (ParameterValue parameterValue : VALUE_MAP.keySet()) {
            if (!commonSettingValue.equals(VALUE_MAP.get(parameterValue))) continue;
            return parameterValue;
        }
        return null;
    }

}

