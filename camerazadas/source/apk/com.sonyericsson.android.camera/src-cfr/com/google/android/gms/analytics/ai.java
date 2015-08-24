/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.app.Activity;
import com.google.android.gms.analytics.i;
import java.util.HashMap;
import java.util.Map;

class ai
implements i {
    String BC;
    double BD = -1.0;
    int BE = -1;
    int BF = -1;
    int BG = -1;
    int BH = -1;
    Map<String, String> BI = new HashMap<String, String>();

    ai() {
    }

    public String am(String string) {
        String string2 = this.BI.get(string);
        if (string2 != null) {
            return string2;
        }
        return string;
    }

    public boolean eZ() {
        if (this.BC != null) {
            return true;
        }
        return false;
    }

    public String fa() {
        return this.BC;
    }

    public boolean fb() {
        if (this.BD >= 0.0) {
            return true;
        }
        return false;
    }

    public double fc() {
        return this.BD;
    }

    public boolean fd() {
        if (this.BE >= 0) {
            return true;
        }
        return false;
    }

    public boolean fe() {
        if (this.BF != -1) {
            return true;
        }
        return false;
    }

    public boolean ff() {
        if (this.BF == 1) {
            return true;
        }
        return false;
    }

    public boolean fg() {
        if (this.BG != -1) {
            return true;
        }
        return false;
    }

    public boolean fh() {
        if (this.BG == 1) {
            return true;
        }
        return false;
    }

    public boolean fi() {
        if (this.BH == 1) {
            return true;
        }
        return false;
    }

    public int getSessionTimeout() {
        return this.BE;
    }

    public String k(Activity activity) {
        return this.am(activity.getClass().getCanonicalName());
    }
}

