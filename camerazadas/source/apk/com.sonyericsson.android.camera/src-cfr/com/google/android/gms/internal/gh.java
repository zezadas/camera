/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.ez;

@ez
public final class gh {
    public static void a(Context object, boolean bl) {
        object = gh.n((Context)object).edit();
        object.putBoolean("use_https", bl);
        object.commit();
    }

    private static SharedPreferences n(Context context) {
        return context.getSharedPreferences("admob", 0);
    }

    public static boolean o(Context context) {
        return gh.n(context).getBoolean("use_https", true);
    }
}

