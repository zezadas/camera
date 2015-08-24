/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.SharedPreferences;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class SharedPreferencesWriter {
    static final String TAG = "SharedPreferencesWriter";
    private SharedPreferences.Editor mPreferencesEditor;

    public SharedPreferencesWriter(SharedPreferences sharedPreferences) {
        if (sharedPreferences != null) {
            this.mPreferencesEditor = sharedPreferences.edit();
        }
    }

    public void apply() {
        if (this.mPreferencesEditor == null) {
            return;
        }
        this.mPreferencesEditor.apply();
    }

    public void writeBoolean(String string, boolean bl) {
        if (this.mPreferencesEditor == null) {
            return;
        }
        this.mPreferencesEditor.putBoolean(string, bl);
    }

    public void writeString(String string, String string2) {
        if (this.mPreferencesEditor == null) {
            return;
        }
        this.mPreferencesEditor.putString(string, string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void writeString(Map<String, String> iterator, String string) {
        if (this.mPreferencesEditor != null) {
            for (Map.Entry entry : iterator.entrySet()) {
                this.writeString(string + (String)entry.getKey(), (String)entry.getValue());
            }
        }
    }
}

