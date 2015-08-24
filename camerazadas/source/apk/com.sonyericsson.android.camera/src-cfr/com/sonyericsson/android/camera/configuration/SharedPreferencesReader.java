/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SharedPreferencesReader {
    static final String TAG = "SharedPreferencesReader";
    private SharedPreferences mPreferences;

    public SharedPreferencesReader(SharedPreferences sharedPreferences) {
        this.mPreferences = sharedPreferences;
    }

    public boolean readBoolean(String string, boolean bl) {
        if (this.mPreferences == null) {
            return bl;
        }
        return this.mPreferences.getBoolean(string, bl);
    }

    public String readString(String string, String string2) {
        if (this.mPreferences == null) {
            return string2;
        }
        return this.mPreferences.getString(string, string2);
    }

    public Map<String, String> readStringMap(List<?> object, String string) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        if (this.mPreferences != null) {
            for (Object e : object) {
                String string2 = string + e.toString();
                if ((string2 = this.mPreferences.getString(string2, null)) == null) continue;
                hashMap.put(e.toString(), string2);
            }
        }
        return hashMap;
    }
}

