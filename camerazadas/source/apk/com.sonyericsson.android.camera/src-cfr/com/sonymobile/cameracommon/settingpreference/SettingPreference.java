/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.settingpreference;

import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonymobile.cameracommon.settingpreference.ParameterApplyerInterface;
import com.sonymobile.cameracommon.settingpreference.ParameterHolder;
import com.sonymobile.cameracommon.settingpreference.ParameterKey;
import com.sonymobile.cameracommon.settingpreference.ParameterSet;
import com.sonymobile.cameracommon.settingpreference.ParameterValue;
import com.sonymobile.cameracommon.settingpreference.SettingSelectability;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class SettingPreference<T extends ParameterApplyerInterface, U extends ParameterSet<T>> {
    private static final String DELIMITER = "-";
    public static final String GLOBAL_PREFIX = "global";
    public static final String TAG = SettingPreference.class.getSimpleName();
    private final U mParameters;
    private final String mPrefix;

    public SettingPreference(String string, U u) {
        this.mPrefix = string;
        this.mParameters = u;
    }

    private String getSharedPreferenceKey(ParameterKey parameterKey) {
        return this.mPrefix + "-" + parameterKey.name();
    }

    private Map<String, String> getStringMapToWriteInSP() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        for (ParameterKey parameterKey : this.mParameters.keys()) {
            Object object = this.mParameters.get(parameterKey);
            if (!parameterKey.isPersistent() || !this.isSelectable(object) || (object = object.serialize()) == null) continue;
            hashMap.put(this.getSharedPreferenceKey(parameterKey), (String)object);
        }
        return hashMap;
    }

    private boolean isSelectable(ParameterHolder<?> parameterHolder) {
        if (parameterHolder.getSelectability() == SettingSelectability.SELECTABLE) {
            return true;
        }
        return false;
    }

    private void readStringMapToLoad(Map<String, String> map) {
        for (ParameterKey parameterKey : this.mParameters.keys()) {
            String string;
            ParameterHolder parameterHolder = this.mParameters.get(parameterKey);
            if (!parameterKey.isPersistent() || !this.isSelectable(parameterHolder) || (string = map.get(parameterKey.name())) == null) continue;
            parameterHolder.deserialize(string);
        }
    }

    public void apply(T t) {
        this.mParameters.apply(t);
    }

    public boolean contains(ParameterKey parameterKey) {
        return this.mParameters.keys().contains(parameterKey);
    }

    public ParameterValue get(ParameterKey parameterKey) {
        return this.mParameters.get(parameterKey).get();
    }

    public SettingSelectability getSelectability(ParameterKey parameterKey) {
        return this.mParameters.get(parameterKey).getSelectability();
    }

    public ParameterValue[] options(ParameterKey parameterKey) {
        return this.mParameters.get(parameterKey).getOptions();
    }

    public U parameters() {
        return this.mParameters;
    }

    public final void restore(ParamSharedPrefWrapper paramSharedPrefWrapper, ParameterKey[] arrparameterKey) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        for (ParameterKey parameterKey : arrparameterKey) {
            String string;
            if (!parameterKey.isPersistent() || (string = paramSharedPrefWrapper.getParamFromSP(this.getSharedPreferenceKey(parameterKey), null)) == null) continue;
            hashMap.put(parameterKey.name(), string);
        }
        this.readStringMapToLoad(hashMap);
    }

    public void set(ParameterValue parameterValue) {
        this.mParameters.get(parameterValue.key()).setWithAutoCast(parameterValue);
    }

    public final void store(ParamSharedPrefWrapper paramSharedPrefWrapper) {
        for (Map.Entry<String, String> entry : this.getStringMapToWriteInSP().entrySet()) {
            paramSharedPrefWrapper.setParamToSP(entry.getKey(), entry.getValue());
        }
    }
}

