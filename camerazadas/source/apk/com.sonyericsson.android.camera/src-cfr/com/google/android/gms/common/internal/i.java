/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.nf;

public final class i {
    private final String Mf;

    public i(String string) {
        this.Mf = o.i(string);
    }

    public void a(Context object, String string, String string2, Throwable throwable) {
        StackTraceElement[] arrstackTraceElement = throwable.getStackTrace();
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < arrstackTraceElement.length && i < 2; ++i) {
            stringBuilder.append(arrstackTraceElement[i].toString());
            stringBuilder.append("\n");
        }
        object = new nf((Context)object, 10);
        object.a("GMS_WTF", null, "GMS_WTF", stringBuilder.toString());
        object.send();
        if (this.aC(7)) {
            Log.e(string, string2, throwable);
            Log.wtf(string, string2, throwable);
        }
    }

    public void a(String string, String string2, Throwable throwable) {
        if (this.aC(4)) {
            Log.i(string, string2, throwable);
        }
    }

    public boolean aC(int n) {
        return Log.isLoggable(this.Mf, n);
    }

    public void b(String string, String string2, Throwable throwable) {
        if (this.aC(5)) {
            Log.w(string, string2, throwable);
        }
    }

    public void c(String string, String string2, Throwable throwable) {
        if (this.aC(6)) {
            Log.e(string, string2, throwable);
        }
    }

    public void n(String string, String string2) {
        if (this.aC(3)) {
            Log.d(string, string2);
        }
    }

    public void o(String string, String string2) {
        if (this.aC(2)) {
            Log.v(string, string2);
        }
    }

    public void p(String string, String string2) {
        if (this.aC(5)) {
            Log.w(string, string2);
        }
    }

    public void q(String string, String string2) {
        if (this.aC(6)) {
            Log.e(string, string2);
        }
    }
}

