/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.SharedPrefsTranslator;
import java.util.Collections;
import java.util.List;

public class IntArrayListCapabilityItem
extends CapabilityItem<List<int[]>> {
    IntArrayListCapabilityItem(String string, SharedPreferences sharedPreferences) {
        super(string, sharedPreferences);
    }

    IntArrayListCapabilityItem(String string, Camera.Parameters parameters) {
        super(string, parameters);
    }

    IntArrayListCapabilityItem(String string, List<int[]> list) {
        super(string, list);
    }

    @Override
    List<int[]> getDefaultValue() {
        return Collections.emptyList();
    }

    @Override
    public List<int[]> read(SharedPreferences sharedPreferences, String string) {
        if (sharedPreferences.contains(string)) {
            return SharedPrefsTranslator.getIntArrayList(sharedPreferences.getString(string, ""));
        }
        return Collections.emptyList();
    }

    @Override
    public void write(SharedPreferences.Editor editor) {
        List list = (List)this.get();
        if (list != null) {
            editor.putString(this.getName(), SharedPrefsTranslator.fromIntArrayList(list));
        }
    }
}

