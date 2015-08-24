/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.ExtensionValueParser;

public class BooleanCapabilityItem
extends CapabilityItem<Boolean> {
    BooleanCapabilityItem(String string, SharedPreferences sharedPreferences) {
        super(string, sharedPreferences);
    }

    BooleanCapabilityItem(String string, Camera.Parameters parameters) {
        super(string, parameters);
    }

    BooleanCapabilityItem(String string, Boolean bl) {
        super(string, bl);
    }

    @Override
    Boolean getDefaultValue() {
        return false;
    }

    @Override
    public Boolean parseExtensionValue(String string) {
        return ExtensionValueParser.getBoolean(string);
    }

    @Override
    public Boolean read(SharedPreferences sharedPreferences, String string) {
        if (sharedPreferences.contains(string)) {
            return sharedPreferences.getBoolean(string, false);
        }
        return false;
    }

    @Override
    public void write(SharedPreferences.Editor editor) {
        Boolean bl = (Boolean)this.get();
        if (bl != null) {
            editor.putBoolean(this.getName(), bl);
        }
    }
}

