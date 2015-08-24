/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import com.sonyericsson.cameracommon.utility.ParamSharedPref;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ParamSharedPrefWrapper {
    private static final String TAG;
    private static final String VERSION_KEY = "SHARED_PREFERNCE_VERSION";
    private final ParamSharedPref mParamSharedPref;
    private final String mSharedPreferenceName;
    private final String mVersion;

    static;

    public ParamSharedPrefWrapper(Context var1, String var2, String var3);

    public void checkFirmwareVersionUpdated();

    public void clear();

    public float getParamFromSP(String var1, float var2);

    public int getParamFromSP(String var1, int var2);

    public String getParamFromSP(String var1, String var2);

    public boolean getParamFromSP(String var1, boolean var2);

    public String getSharedPreferenceName();

    public String getVersion();

    public void setParamToSP(String var1, float var2);

    public void setParamToSP(String var1, int var2);

    public void setParamToSP(String var1, String var2);

    public void setParamToSP(String var1, boolean var2);
}

