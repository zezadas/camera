/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.iv;

@ez
public final class bn {
    public static iv<String> oX;
    public static iv<String> oY;
    public static iv<Boolean> oZ;
    public static iv<Boolean> pa;
    public static iv<Boolean> pb;
    public static iv<String> pc;
    public static iv<Boolean> pd;
    public static iv<Integer> pe;
    public static iv<Integer> pf;
    public static iv<Integer> pg;
    public static iv<Integer> ph;
    public static iv<Integer> pi;
    private static final Bundle pj;
    private static boolean pk;

    static {
        pj = new Bundle();
        pk = false;
        oX = bn.a("gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
        oY = bn.a("gads:sdk_core_experiment_id", null);
        oZ = bn.c("gads:sdk_crash_report_enabled", false);
        pa = bn.c("gads:sdk_crash_report_full_stacktrace", false);
        pb = bn.c("gads:block_autoclicks", false);
        pc = bn.a("gads:block_autoclicks_experiment_id", null);
        pk = true;
        pd = bn.c("gads:enable_content_fetching", false);
        pe = bn.a("gads:content_length_weight", 1);
        pf = bn.a("gads:content_age_weight", 1);
        pg = bn.a("gads:min_content_len", 11);
        ph = bn.a("gads:fingerprint_number", 10);
        pi = bn.a("gads:sleep_sec", 10);
    }

    private static iv<Integer> a(String string, int n) {
        pj.putInt(string, n);
        return iv.a(string, n);
    }

    private static iv<String> a(String string, String string2) {
        pj.putString(string, string2);
        return iv.m(string, string2);
    }

    public static Bundle bs() {
        return pj;
    }

    private static iv<Boolean> c(String string, boolean bl) {
        pj.putBoolean(string, bl);
        return iv.g(string, bl);
    }
}

