/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.ParameterSelectability;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;

public class ParameterUtil {
    private static final String TAG = "ParameterUtil";

    /*
     * Enabled aggressive block sorting
     */
    public static <T extends ParameterValue> T applyCurrentValue(ParameterValueHolder<T> parameterValueHolder, T t) {
        ParameterKey parameterKey = parameterValueHolder.get().getParameterKey();
        if (parameterValueHolder.getRecommendedValue() != null) {
            parameterValueHolder.applyCurrentValue();
        } else {
            parameterValueHolder.set(t);
        }
        parameterKey.setSelectability(ParameterSelectability.SELECTABLE);
        return parameterValueHolder.get();
    }

    public static <T extends ParameterValue> T applyRecommendedValue(ParameterValueHolder<T> parameterValueHolder, T t) {
        ParameterKey parameterKey = t.getParameterKey();
        parameterValueHolder.applyRecommendedValue(t);
        parameterKey.setSelectability(ParameterSelectability.SELECTABLE);
        return t;
    }

    public static <T extends ParameterValue> T forceChange(ParameterValueHolder<T> parameterValueHolder, T t) {
        ParameterKey parameterKey = t.getParameterKey();
        if (!parameterKey.isInvalid()) {
            parameterValueHolder.forceChange(t);
            parameterKey.setSelectability(ParameterSelectability.FORCE_CHANGED);
        }
        return t;
    }

    public static <T extends ParameterValue> T getPrimaryValue(T t, T t2, T[] arrT) {
        int n = arrT.length;
        for (int i = 0; i < n; ++i) {
            if (t != arrT[i]) continue;
            return t;
        }
        return t2;
    }

    public static <T extends ParameterValue> T reset(ParameterValueHolder<T> parameterValueHolder) {
        ParameterKey parameterKey = parameterValueHolder.get().getParameterKey();
        if (!parameterKey.isInvalid()) {
            parameterValueHolder.reset();
            parameterKey.setSelectability(ParameterSelectability.SELECTABLE);
        }
        return parameterValueHolder.get();
    }

    public static <T extends ParameterValue> T reset(ParameterValueHolder<T> parameterValueHolder, T t) {
        ParameterKey parameterKey = t.getParameterKey();
        if (!parameterKey.isInvalid()) {
            parameterValueHolder.reset();
            parameterValueHolder.set(t);
            parameterKey.setSelectability(ParameterSelectability.SELECTABLE);
        }
        return parameterValueHolder.get();
    }

    public static <T extends ParameterValue> ParameterValueHolder<T> setOptions(ParameterValueHolder<T> parameterValueHolder, T[] arrT) {
        parameterValueHolder.setOptions(arrT);
        return parameterValueHolder;
    }

    public static <T extends ParameterValue> T unavailable(ParameterValueHolder<T> parameterValueHolder, T t) {
        ParameterKey parameterKey = t.getParameterKey();
        if (!parameterKey.isInvalid()) {
            parameterValueHolder.set(t);
            parameterKey.setSelectability(ParameterSelectability.UNAVAILABLE);
        }
        return t;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static <T extends ParameterValue> ParameterValueHolder<T> updateDefaultValue(ParameterValueHolder<T> parameterValueHolder) {
        ParameterValue[] arrparameterValue = parameterValueHolder.getOptions();
        ParameterSelectability parameterSelectability = ParameterSelectability.getSelectability(arrparameterValue.length);
        if (parameterSelectability == ParameterSelectability.INVALID) return parameterValueHolder;
        ParameterValue parameterValue = parameterValueHolder.getDefaultValue();
        ParameterValue parameterValue2 = arrparameterValue[0];
        if (parameterSelectability == ParameterSelectability.FIXED) {
            if (parameterValue == parameterValue2) return parameterValueHolder;
            {
                parameterValueHolder.updateDefaultValue(parameterValue2);
                return parameterValueHolder;
            }
        }
        if (parameterSelectability != ParameterSelectability.SELECTABLE || parameterValue == ParameterUtil.getPrimaryValue((ParameterValue)parameterValue, (ParameterValue)parameterValue2, (ParameterValue[])arrparameterValue)) {
            return parameterValueHolder;
        }
        parameterValueHolder.updateDefaultValue(parameterValue2);
        return parameterValueHolder;
    }
}

