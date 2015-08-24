/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.SharedPreferences;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public class SharedPreferencesReader {
    static final String TAG = "SharedPreferencesReader";
    private SharedPreferences mPreferences;

    public SharedPreferencesReader(SharedPreferences var1);

    public boolean readBoolean(String var1, boolean var2);

    public String readString(String var1, String var2);

    public Map<String, String> readStringMap(List<?> var1, String var2);
}

