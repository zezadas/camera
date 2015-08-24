/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.analytics.l;

class ad
implements l {
    private static ad Bi;
    private static Object xz;
    private final Context mContext;

    static {
        xz = new Object();
    }

    protected ad(Context context) {
        this.mContext = context;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static ad eQ() {
        Object object = xz;
        synchronized (object) {
            return Bi;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void y(Context context) {
        Object object = xz;
        synchronized (object) {
            if (Bi == null) {
                Bi = new ad(context);
            }
            return;
        }
    }

    public boolean ac(String string) {
        return "&sr".equals(string);
    }

    protected String eR() {
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        return "" + displayMetrics.widthPixels + "x" + displayMetrics.heightPixels;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public String getValue(String string) {
        if (!(string != null && string.equals("&sr"))) {
            return null;
        }
        return this.eR();
    }
}

