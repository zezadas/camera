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
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingPreference<T extends ParameterApplyerInterface, U extends ParameterSet<T>> {
    private static final String DELIMITER = "-";
    public static final String GLOBAL_PREFIX = "global";
    public static final String TAG;
    private final U mParameters;
    private final String mPrefix;

    static;

    public SettingPreference(String var1, U var2);

    private String getSharedPreferenceKey(ParameterKey var1);

    private Map<String, String> getStringMapToWriteInSP();

    private boolean isSelectable(ParameterHolder<?> var1);

    private void readStringMapToLoad(Map<String, String> var1);

    public void apply(T var1);

    public boolean contains(ParameterKey var1);

    public ParameterValue get(ParameterKey var1);

    public SettingSelectability getSelectability(ParameterKey var1);

    public ParameterValue[] options(ParameterKey var1);

    public U parameters();

    public final void restore(ParamSharedPrefWrapper var1, ParameterKey[] var2);

    public void set(ParameterValue var1);

    public final void store(ParamSharedPrefWrapper var1);
}

