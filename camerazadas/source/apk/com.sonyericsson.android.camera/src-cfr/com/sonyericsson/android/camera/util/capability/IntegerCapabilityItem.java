/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.ExtensionValueParser;

public class IntegerCapabilityItem
extends CapabilityItem<Integer> {
    IntegerCapabilityItem(String string, SharedPreferences sharedPreferences) {
        super(string, sharedPreferences);
    }

    IntegerCapabilityItem(String string, Camera.Parameters parameters) {
        super(string, parameters);
    }

    IntegerCapabilityItem(String string, Integer n) {
        super(string, n);
    }

    @Override
    Integer getDefaultValue() {
        return 0;
    }

    @Override
    public Integer parseExtensionValue(String string) {
        return ExtensionValueParser.getInt(string);
    }

    @Override
    public Integer read(SharedPreferences sharedPreferences, String string) {
        if (sharedPreferences.contains(string)) {
            return sharedPreferences.getInt(string, 0);
        }
        return 0;
    }

    @Override
    public void write(SharedPreferences.Editor editor) {
        Integer n = (Integer)this.get();
        if (n != null) {
            editor.putInt(this.getName(), n);
        }
    }
}

