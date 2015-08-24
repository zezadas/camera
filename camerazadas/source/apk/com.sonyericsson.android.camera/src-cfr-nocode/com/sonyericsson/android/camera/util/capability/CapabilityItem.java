/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;

/*
 * Exception performing whole class analysis.
 */
public abstract class CapabilityItem<T> {
    private final String mName;
    private final T mValue;

    CapabilityItem(String var1, SharedPreferences var2);

    CapabilityItem(String var1, Camera.Parameters var2);

    CapabilityItem(String var1, T var2);

    public final T get();

    abstract T getDefaultValue();

    public final String getName();

    T parseExtensionValue(String var1);

    T read(SharedPreferences var1, String var2);

    void write(SharedPreferences.Editor var1);
}

