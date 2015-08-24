/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;

public class FloatCapabilityItem
extends CapabilityItem<Float> {
    FloatCapabilityItem(String string, SharedPreferences sharedPreferences) {
        super(string, sharedPreferences);
    }

    FloatCapabilityItem(String string, Camera.Parameters parameters) {
        super(string, parameters);
    }

    FloatCapabilityItem(String string, Float f) {
        super(string, f);
    }

    @Override
    Float getDefaultValue() {
        return Float.valueOf(0.0f);
    }

    @Override
    public Float read(SharedPreferences sharedPreferences, String string) {
        if (sharedPreferences.contains(string)) {
            return Float.valueOf(sharedPreferences.getFloat(string, 0.0f));
        }
        return Float.valueOf(0.0f);
    }

    @Override
    public void write(SharedPreferences.Editor editor) {
        Float f = (Float)this.get();
        if (f != null) {
            editor.putFloat(this.getName(), f.floatValue());
        }
    }
}

