/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.analytics.l;
import com.google.android.gms.analytics.z;

class g
implements l {
    private static g xP;
    private static Object xz;
    protected String xL;
    protected String xM;
    protected String xN;
    protected String xO;

    static {
        xz = new Object();
    }

    protected g() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private g(Context object) {
        PackageManager packageManager = object.getPackageManager();
        this.xN = object.getPackageName();
        this.xO = packageManager.getInstallerPackageName(this.xN);
        String string = this.xN;
        Object var4_5 = null;
        Object object2 = string;
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(object.getPackageName(), 0);
            object = var4_5;
            object2 = string;
            if (packageInfo != null) {
                object2 = string;
                object2 = object = packageManager.getApplicationLabel(packageInfo.applicationInfo).toString();
                string = packageInfo.versionName;
                object2 = object;
                object = string;
            }
        }
        catch (PackageManager.NameNotFoundException var1_2) {
            z.T("Error retrieving package info: appName set to " + (String)object2);
            object = var4_5;
        }
        this.xL = object2;
        this.xM = object;
    }

    public static g dP() {
        return xP;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void y(Context context) {
        Object object = xz;
        synchronized (object) {
            if (xP == null) {
                xP = new g(context);
            }
            return;
        }
    }

    public boolean ac(String string) {
        if ("&an".equals(string) || "&av".equals(string) || "&aid".equals(string) || "&aiid".equals(string)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public String getValue(String string) {
        if (string == null) {
            return null;
        }
        if (string.equals("&an")) {
            return this.xL;
        }
        if (string.equals("&av")) {
            return this.xM;
        }
        if (string.equals("&aid")) {
            return this.xN;
        }
        if (!string.equals("&aiid")) return null;
        return this.xO;
    }
}

