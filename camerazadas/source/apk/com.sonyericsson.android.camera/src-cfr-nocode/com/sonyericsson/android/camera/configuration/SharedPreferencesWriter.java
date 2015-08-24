/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.SharedPreferences;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public class SharedPreferencesWriter {
    static final String TAG = "SharedPreferencesWriter";
    private SharedPreferences.Editor mPreferencesEditor;

    public SharedPreferencesWriter(SharedPreferences var1);

    public void apply();

    public void writeBoolean(String var1, boolean var2);

    public void writeString(String var1, String var2);

    public void writeString(Map<String, String> var1, String var2);
}

