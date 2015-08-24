/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;

/*
 * Exception performing whole class analysis ignored.
 */
public class ParameterUtil {
    private static final String TAG = "ParameterUtil";

    public ParameterUtil();

    public static <T extends ParameterValue> T applyCurrentValue(ParameterValueHolder<T> var0, T var1);

    public static <T extends ParameterValue> T applyRecommendedValue(ParameterValueHolder<T> var0, T var1);

    public static <T extends ParameterValue> T forceChange(ParameterValueHolder<T> var0, T var1);

    public static <T extends ParameterValue> T getPrimaryValue(T var0, T var1, T[] var2);

    public static <T extends ParameterValue> T reset(ParameterValueHolder<T> var0);

    public static <T extends ParameterValue> T reset(ParameterValueHolder<T> var0, T var1);

    public static <T extends ParameterValue> ParameterValueHolder<T> setOptions(ParameterValueHolder<T> var0, T[] var1);

    public static <T extends ParameterValue> T unavailable(ParameterValueHolder<T> var0, T var1);

    public static <T extends ParameterValue> ParameterValueHolder<T> updateDefaultValue(ParameterValueHolder<T> var0);
}

