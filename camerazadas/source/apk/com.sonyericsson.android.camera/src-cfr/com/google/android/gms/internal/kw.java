/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.internal.kb;

public class kw {
    private static final ThreadLocal<String> Ty = new ThreadLocal();

    public static String bt(String string) {
        return kw.s(string, Ty.get());
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static DataSource c(DataSource dataSource) {
        if (!dataSource.iO()) {
            return dataSource;
        }
        String string = Ty.get();
        if (kw.jc()) return dataSource;
        if (string.equals(dataSource.getAppPackageName())) return dataSource;
        return dataSource.iP();
    }

    public static boolean jc() {
        String string = Ty.get();
        if (string == null || string.startsWith("com.google")) {
            return true;
        }
        return false;
    }

    private static String s(String string, String string2) {
        if (string == null || string2 == null) {
            return string;
        }
        byte[] arrby = new byte[string.length() + string2.length()];
        System.arraycopy(string.getBytes(), 0, arrby, 0, string.length());
        System.arraycopy(string2.getBytes(), 0, arrby, string.length(), string2.length());
        return Integer.toHexString(kb.a(arrby, 0, arrby.length, 0));
    }
}

