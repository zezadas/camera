/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.os.Build;
import com.google.android.gms.analytics.z;
import java.io.File;

class o {
    static boolean ag(String object) {
        if (o.version() < 9) {
            return false;
        }
        object = new File((String)object);
        object.setReadable(false, false);
        object.setWritable(false, false);
        object.setReadable(true, true);
        object.setWritable(true, true);
        return true;
    }

    public static int version() {
        try {
            int n = Integer.parseInt(Build.VERSION.SDK);
            return n;
        }
        catch (NumberFormatException var1_1) {
            z.T("Invalid version number: " + Build.VERSION.SDK);
            return 0;
        }
    }
}

