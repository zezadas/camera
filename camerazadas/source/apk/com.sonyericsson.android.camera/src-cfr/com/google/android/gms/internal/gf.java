/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import java.math.BigInteger;
import java.util.Locale;

@ez
public final class gf {
    private static final Object uf = new Object();
    private static String we;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String a(Context object, String string, String string2) {
        Object object2 = uf;
        synchronized (object2) {
            if (we != null) return we;
            if (TextUtils.isEmpty((CharSequence)string)) return we;
            gf.b((Context)object, string, string2);
            return we;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static void b(Context object, String object2, String object3) {
        int n;
        Class class_;
        String[] arrstring;
        try {
            object3 = object.createPackageContext((String)object3, 3).getClassLoader();
            class_ = Class.forName("com.google.ads.mediation.MediationAdapter", false, (ClassLoader)object3);
            object = new BigInteger(new byte[1]);
            arrstring = object2.split(",");
            n = 0;
        }
        catch (Throwable var0_1) {
            we = "err";
            return;
        }
        do {
            if (n >= arrstring.length) {
                we = String.format(Locale.US, "%X", object);
                return;
            }
            object2 = object;
            if (gj.a((ClassLoader)object3, class_, arrstring[n])) {
                object2 = object.setBit(n);
            }
            ++n;
            object = object2;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String di() {
        Object object = uf;
        synchronized (object) {
            return we;
        }
    }
}

