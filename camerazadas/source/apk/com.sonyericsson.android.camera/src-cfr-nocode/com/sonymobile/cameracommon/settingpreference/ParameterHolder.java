/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.settingpreference;

import com.sonymobile.cameracommon.settingpreference.ParameterKey;
import com.sonymobile.cameracommon.settingpreference.ParameterValue;
import com.sonymobile.cameracommon.settingpreference.SettingSelectability;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ParameterHolder<T extends ParameterValue> {
    public static final String NO_VALUE = "NO_VALUE";
    public static final String REGULAR_EXPRESSION = "@";
    private static final String TAG;
    private T mCurrentValue;
    private final T mDefaultValue;
    private T[] mOptions;
    private SettingSelectability mSelectability;

    static;

    public ParameterHolder(T var1);

    public void deserialize(String var1);

    public T get();

    public ParameterKey getKey();

    public T[] getOptions();

    public SettingSelectability getSelectability();

    public String serialize();

    public void set(T var1);

    public /* varargs */ void setOptions(T ... var1);

    void setWithAutoCast(ParameterValue var1);
}

