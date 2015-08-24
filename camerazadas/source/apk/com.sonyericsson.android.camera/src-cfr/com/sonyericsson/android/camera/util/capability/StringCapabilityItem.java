/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;

public class StringCapabilityItem
extends CapabilityItem<String> {
    StringCapabilityItem(String string, SharedPreferences sharedPreferences) {
        super(string, sharedPreferences);
    }

    StringCapabilityItem(String string, Camera.Parameters parameters) {
        super(string, parameters);
    }

    StringCapabilityItem(String string, String string2) {
        super(string, string2);
    }

    @Override
    String getDefaultValue() {
        return "";
    }

    @Override
    public String parseExtensionValue(String string) {
        return string;
    }

    @Override
    public String read(SharedPreferences sharedPreferences, String string) {
        if (sharedPreferences.contains(string)) {
            return sharedPreferences.getString(string, "");
        }
        return "";
    }

    @Override
    public void write(SharedPreferences.Editor editor) {
        String string = (String)this.get();
        if (string != null) {
            editor.putString(this.getName(), string);
        }
    }
}

