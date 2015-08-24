/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.ExtensionValueParser;
import com.sonyericsson.android.camera.util.capability.SharedPrefsTranslator;

public class RectCapabilityItem
extends CapabilityItem<Rect> {
    RectCapabilityItem(String string, SharedPreferences sharedPreferences) {
        super(string, sharedPreferences);
    }

    RectCapabilityItem(String string, Rect rect) {
        super(string, rect);
    }

    RectCapabilityItem(String string, Camera.Parameters parameters) {
        super(string, parameters);
    }

    @Override
    Rect getDefaultValue() {
        return new Rect();
    }

    @Override
    public Rect parseExtensionValue(String string) {
        return ExtensionValueParser.getRect(string);
    }

    @Override
    public Rect read(SharedPreferences sharedPreferences, String string) {
        if (sharedPreferences.contains(string)) {
            return SharedPrefsTranslator.getRect(sharedPreferences.getString(string, ""));
        }
        return new Rect();
    }

    @Override
    public void write(SharedPreferences.Editor editor) {
        Rect rect = (Rect)this.get();
        if (rect != null) {
            editor.putString(this.getName(), SharedPrefsTranslator.fromRect(rect));
        }
    }
}

