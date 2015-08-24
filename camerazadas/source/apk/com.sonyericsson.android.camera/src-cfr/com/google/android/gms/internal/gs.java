/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.internal.ez;

@ez
public final class gs {
    public static void S(String string) {
        if (gs.u(3)) {
            Log.d("Ads", string);
        }
    }

    public static void T(String string) {
        if (gs.u(6)) {
            Log.e("Ads", string);
        }
    }

    public static void U(String string) {
        if (gs.u(4)) {
            Log.i("Ads", string);
        }
    }

    public static void V(String string) {
        if (gs.u(2)) {
            Log.v("Ads", string);
        }
    }

    public static void W(String string) {
        if (gs.u(5)) {
            Log.w("Ads", string);
        }
    }

    public static void a(String string, Throwable throwable) {
        if (gs.u(3)) {
            Log.d("Ads", string, throwable);
        }
    }

    public static void b(String string, Throwable throwable) {
        if (gs.u(6)) {
            Log.e("Ads", string, throwable);
        }
    }

    public static void c(String string, Throwable throwable) {
        if (gs.u(4)) {
            Log.i("Ads", string, throwable);
        }
    }

    public static void d(String string, Throwable throwable) {
        if (gs.u(5)) {
            Log.w("Ads", string, throwable);
        }
    }

    public static boolean u(int n) {
        if (!((n >= 5 || Log.isLoggable("Ads", n)) && n != 2)) {
            return false;
        }
        return true;
    }
}

