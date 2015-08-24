/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.sonyericsson.android.camera.configuration.ParameterCategory;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.SharedPreferencesReader;
import com.sonyericsson.android.camera.configuration.SharedPreferencesWriter;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SharedPreferencesUtil {
    static final String TAG;
    private Map<String, Map<String, String>> mMaps;
    private SharedPreferences mPreferences;
    private List<String> mPrefixList;
    private SharedPreferencesReader mReader;
    private SharedPreferencesWriter mWriter;

    static;

    public SharedPreferencesUtil(Context var1);

    private void apply(boolean var1);

    public static String createPrefix(ParameterCategory var0, CapturingMode var1, String var2);

    public static String getCommonPrefix();

    public static String getPrefix(ParameterKey var0, int var1, int var2);

    public static SharedPreferences getSharedPreferences(Context var0, String var1, int var2);

    public void apply();

    public void clearSharedPreferences();

    public SharedPreferences getSharedPreferences();

    public Map<String, String> getStringMap(String var1);

    public boolean readBoolean(String var1, boolean var2);

    public void readParameters(List<ParameterKey> var1);

    public String readString(String var1, String var2);

    public void registerKey(String var1);

    public void setStringMap(String var1, Map<String, String> var2);

    public void writeBoolean(String var1, boolean var2, boolean var3);

    public void writeParameters(boolean var1);

    public void writeString(String var1, String var2, boolean var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class GetSharedPreferencesTask
    implements Callable<SharedPreferences> {
        private final Context mContext;
        private final String mFileName;
        private final int mMode;

        public GetSharedPreferencesTask(Context var1, String var2, int var3);

        @Override
        public SharedPreferences call() throws Exception;
    }

}

