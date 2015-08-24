/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.content.SharedPreferences;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FastCapturingCameraUtils {
    private static final String TAG;

    static;

    public FastCapturingCameraUtils();

    private static CapturingMode getCapturingMode(SharedPreferences var0, int var1);

    public static boolean isSettingValueAvailableInSharedPreferences(SharedPreferences var0, int var1, int var2, ParameterKey var3);

    public static <T extends ParameterValue> T loadParameter(SharedPreferences var0, int var1, int var2, ParameterKey var3, T var4);

    public static <T extends ParameterValue> ParameterValueHolder<T> loadParameter(SharedPreferences var0, int var1, int var2, ParameterValueHolder<T> var3);

    public static boolean shouldClearOnResume(ParameterValue var0);

    public static <T extends ParameterValue> void storeCommonParameter(SharedPreferences var0, ParameterValueHolder<T> var1);

    public static <T extends ParameterValue> void storeParameter(SharedPreferences var0, int var1, T var2);
}

