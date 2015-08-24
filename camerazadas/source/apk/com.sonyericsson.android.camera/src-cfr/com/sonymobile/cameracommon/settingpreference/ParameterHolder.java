/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.settingpreference;

import com.sonymobile.cameracommon.settingpreference.ParameterKey;
import com.sonymobile.cameracommon.settingpreference.ParameterValue;
import com.sonymobile.cameracommon.settingpreference.SettingSelectability;

public class ParameterHolder<T extends ParameterValue> {
    public static final String NO_VALUE = "NO_VALUE";
    public static final String REGULAR_EXPRESSION = "@";
    private static final String TAG = ParameterHolder.class.getSimpleName();
    private T mCurrentValue;
    private final T mDefaultValue;
    private T[] mOptions;
    private SettingSelectability mSelectability;

    public ParameterHolder(T t) {
        this.mDefaultValue = t;
        this.mCurrentValue = null;
        this.mOptions = null;
        this.mSelectability = SettingSelectability.UNSUPPORTED;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public void deserialize(String object) {
        if (object.equals("NO_VALUE")) {
            return;
        }
        String[] arrstring = object.split("@");
        if (arrstring.length < 2) return;
        object = null;
        try {
            object = arrstring = (ParameterValue)Enum.valueOf(Class.forName(arrstring[0]), arrstring[1]);
        }
        catch (IllegalArgumentException var2_3) {
        }
        catch (LinkageError var2_4) {
        }
        catch (ClassNotFoundException var2_5) {
        }
        catch (ClassCastException var2_6) {}
        if (object == null) return;
        this.set(object);
    }

    public T get() {
        return this.mCurrentValue;
    }

    public ParameterKey getKey() {
        return this.mDefaultValue.key();
    }

    public T[] getOptions() {
        return (ParameterValue[])this.mOptions.clone();
    }

    public SettingSelectability getSelectability() {
        return this.mSelectability;
    }

    public String serialize() {
        if (this.mCurrentValue == null) {
            return "NO_VALUE";
        }
        return this.mCurrentValue.getClass().getName() + "@" + this.mCurrentValue.toString();
    }

    public void set(T t) {
        this.mCurrentValue = t;
        if (this.mSelectability == SettingSelectability.UNSUPPORTED) {
            this.setOptions(new ParameterValue[]{this.mCurrentValue});
        }
    }

    public /* varargs */ void setOptions(T ... arrT) {
        this.mOptions = (ParameterValue[])arrT.clone();
        if (this.mOptions.length == 0) {
            this.mSelectability = SettingSelectability.UNSUPPORTED;
            return;
        }
        if (this.mOptions.length == 1) {
            this.mSelectability = SettingSelectability.FIX;
            return;
        }
        this.mSelectability = SettingSelectability.SELECTABLE;
    }

    void setWithAutoCast(ParameterValue parameterValue) {
        if (this.mDefaultValue.getClass().isInstance(parameterValue) || parameterValue == null) {
            this.mCurrentValue = parameterValue;
            return;
        }
        throw new IllegalArgumentException();
    }
}

