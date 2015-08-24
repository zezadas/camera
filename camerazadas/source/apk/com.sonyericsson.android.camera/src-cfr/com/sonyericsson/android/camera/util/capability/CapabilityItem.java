/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;

public abstract class CapabilityItem<T> {
    private final String mName;
    private final T mValue;

    CapabilityItem(String string, SharedPreferences sharedPreferences) {
        this.mName = string;
        this.mValue = this.read(sharedPreferences, string);
    }

    CapabilityItem(String string, Camera.Parameters parameters) {
        this.mName = string;
        this.mValue = this.parseExtensionValue(parameters.get(string));
    }

    CapabilityItem(String string, T t) {
        this.mName = string;
        this.mValue = t;
    }

    public final T get() {
        if (this.mValue == null) {
            return this.getDefaultValue();
        }
        return this.mValue;
    }

    abstract T getDefaultValue();

    public final String getName() {
        return this.mName;
    }

    T parseExtensionValue(String string) {
        return null;
    }

    T read(SharedPreferences sharedPreferences, String string) {
        return null;
    }

    void write(SharedPreferences.Editor editor) {
    }
}

