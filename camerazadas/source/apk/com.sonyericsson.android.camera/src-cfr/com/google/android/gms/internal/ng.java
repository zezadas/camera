/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.internal.ni;
import com.google.android.gms.internal.nl;
import com.google.android.gms.internal.nm;
import com.google.android.gms.internal.no;

public class ng {
    private final no akF;
    private nm akG;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public ng(Context context, int n, String string, String string2, a a, boolean bl) {
        int n2 = 0;
        String string3 = context.getPackageName();
        try {
            int n3;
            n2 = n3 = context.getPackageManager().getPackageInfo((String)string3, (int)0).versionCode;
        }
        catch (PackageManager.NameNotFoundException var10_10) {
            Log.wtf("PlayLogger", "This can't happen.");
        }
        this.akG = new nm(string3, n2, n, string, string2, bl);
        this.akF = new no(context, new nl(a));
    }

    public /* varargs */ void a(long l, String string, byte[] arrby, String ... arrstring) {
        this.akF.b(this.akG, new ni(l, string, arrby, arrstring));
    }

    public /* varargs */ void b(String string, byte[] arrby, String ... arrstring) {
        this.a(System.currentTimeMillis(), string, arrby, arrstring);
    }

    public void start() {
        this.akF.start();
    }

    public void stop() {
        this.akF.stop();
    }

    public static interface a {
        public void b(PendingIntent var1);

        public void mU();

        public void mV();
    }

}

