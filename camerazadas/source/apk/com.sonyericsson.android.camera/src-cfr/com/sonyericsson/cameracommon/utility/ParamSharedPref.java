/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.content.SharedPreferences;

public class ParamSharedPref {
    private SharedPreferences.Editor mEditor = null;
    private SharedPreferences mPref = null;

    ParamSharedPref(Context context, String string, String string2) {
        try {
            this.mPref = context.getSharedPreferences(string, 0);
            this.mEditor = this.mPref.edit();
            return;
        }
        catch (Exception var1_2) {
            return;
        }
    }

    public void clear() {
        if (this.mEditor != null) {
            this.mEditor.clear().commit();
        }
    }

    public float getParamFromSP(String string, float f) {
        float f2 = f;
        if (this.mPref != null) {
            f2 = this.mPref.getFloat(string, f);
        }
        return f2;
    }

    public int getParamFromSP(String string, int n) {
        if (this.mPref != null) {
            return this.mPref.getInt(string, n);
        }
        return 0;
    }

    public String getParamFromSP(String string, String string2) {
        String string3 = string2;
        if (this.mPref != null) {
            string3 = this.mPref.getString(string, string2);
        }
        return string3;
    }

    public boolean getParamFromSP(String string, boolean bl) {
        boolean bl2 = bl;
        if (this.mPref != null) {
            bl2 = this.mPref.getBoolean(string, bl);
        }
        return bl2;
    }

    public void setParamToSP(String string, float f) {
        if (this.mEditor != null) {
            this.mEditor.putFloat(string, f);
            this.mEditor.apply();
        }
    }

    public void setParamToSP(String string, int n) {
        if (this.mEditor != null) {
            this.mEditor.putInt(string, n);
            this.mEditor.apply();
        }
    }

    public void setParamToSP(String string, String string2) {
        if (this.mEditor != null) {
            this.mEditor.putString(string, string2);
            this.mEditor.apply();
        }
    }

    public void setParamToSP(String string, boolean bl) {
        if (this.mEditor != null) {
            this.mEditor.putBoolean(string, bl);
            this.mEditor.apply();
        }
    }
}

