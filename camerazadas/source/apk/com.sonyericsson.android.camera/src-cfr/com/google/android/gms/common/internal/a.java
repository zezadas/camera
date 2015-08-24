/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.os.Looper;
import android.util.Log;

public final class a {
    public static void I(boolean bl) {
        if (!bl) {
            throw new IllegalStateException();
        }
    }

    public static void a(boolean bl, Object object) {
        if (!bl) {
            throw new IllegalStateException(String.valueOf(object));
        }
    }

    public static void aT(String string) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            Log.e("Asserts", "checkMainThread: current thread " + Thread.currentThread() + " IS NOT the main thread " + Looper.getMainLooper().getThread() + "!");
            throw new IllegalStateException(string);
        }
    }

    public static void aU(String string) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            Log.e("Asserts", "checkNotMainThread: current thread " + Thread.currentThread() + " IS the main thread " + Looper.getMainLooper().getThread() + "!");
            throw new IllegalStateException(string);
        }
    }

    public static void f(Object object) {
        if (object == null) {
            throw new IllegalArgumentException("null reference");
        }
    }
}

