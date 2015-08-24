/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.content.SharedPreferences;

/*
 * Exception performing whole class analysis.
 */
public class ParamSharedPref {
    private SharedPreferences.Editor mEditor;
    private SharedPreferences mPref;

    ParamSharedPref(Context var1, String var2, String var3);

    public void clear();

    public float getParamFromSP(String var1, float var2);

    public int getParamFromSP(String var1, int var2);

    public String getParamFromSP(String var1, String var2);

    public boolean getParamFromSP(String var1, boolean var2);

    public void setParamToSP(String var1, float var2);

    public void setParamToSP(String var1, int var2);

    public void setParamToSP(String var1, String var2);

    public void setParamToSP(String var1, boolean var2);
}

