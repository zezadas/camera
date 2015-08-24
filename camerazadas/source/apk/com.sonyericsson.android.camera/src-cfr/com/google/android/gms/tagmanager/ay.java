/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.google.android.gms.tagmanager.cz;
import java.util.HashMap;
import java.util.Map;

class ay {
    private static String apy;
    static Map<String, String> apz;

    static {
        apz = new HashMap<String, String>();
    }

    ay() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    static void cF(String string) {
        synchronized (ay.class) {
            apy = string;
            return;
        }
    }

    static void d(Context context, String string) {
        cz.a(context, "gtm_install_referrer", "referrer", string);
        ay.f(context, string);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    static String e(Context object, String string) {
        if (apy == null) {
            synchronized (ay.class) {
                if (apy == null) {
                    apy = (object = object.getSharedPreferences("gtm_install_referrer", 0)) != null ? object.getString("referrer", "") : "";
                }
            }
        }
        return ay.x(apy, string);
    }

    /*
     * Enabled aggressive block sorting
     */
    static String f(Context object, String string, String string2) {
        String string3;
        Object object2 = string3 = apz.get(string);
        if (string3 == null) {
            object = (object = object.getSharedPreferences("gtm_click_referrers", 0)) != null ? object.getString(string, "") : "";
            apz.put(string, (String)object);
            object2 = object;
        }
        return ay.x((String)object2, string2);
    }

    static void f(Context context, String string) {
        String string2 = ay.x(string, "conv");
        if (string2 != null && string2.length() > 0) {
            apz.put(string2, string);
            cz.a(context, "gtm_click_referrers", string2, string);
        }
    }

    static String x(String string, String string2) {
        if (string2 == null) {
            if (string.length() > 0) {
                return string;
            }
            return null;
        }
        return Uri.parse("http://hostname/?" + string).getQueryParameter(string2);
    }
}

