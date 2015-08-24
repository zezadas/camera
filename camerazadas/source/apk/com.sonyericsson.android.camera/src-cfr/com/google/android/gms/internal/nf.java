/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.ng;

public class nf
implements ng.a {
    private final ng akD;
    private boolean akE;

    public nf(Context context, int n) {
        this(context, n, null);
    }

    public nf(Context context, int n, String string) {
        this(context, n, string, null, true);
    }

    public nf(Context context, int n, String string, String string2, boolean bl) {
        this.akD = new ng(context, n, string, string2, this, bl);
        this.akE = true;
    }

    private void mT() {
        if (!this.akE) {
            throw new IllegalStateException("Cannot reuse one-time logger after sending.");
        }
    }

    public /* varargs */ void a(String string, byte[] arrby, String ... arrstring) {
        this.mT();
        this.akD.b(string, arrby, arrstring);
    }

    @Override
    public void b(PendingIntent pendingIntent) {
        Log.w("OneTimePlayLogger", "logger connection failed: " + pendingIntent);
    }

    @Override
    public void mU() {
        this.akD.stop();
    }

    @Override
    public void mV() {
        Log.w("OneTimePlayLogger", "logger connection failed");
    }

    public void send() {
        this.mT();
        this.akD.start();
        this.akE = false;
    }
}

