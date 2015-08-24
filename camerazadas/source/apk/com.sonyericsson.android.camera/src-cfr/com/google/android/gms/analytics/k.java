/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.util.Log;
import com.google.android.gms.analytics.Logger;

class k
implements Logger {
    private int xW = 2;

    k() {
    }

    private String ae(String string) {
        return Thread.currentThread().toString() + ": " + string;
    }

    @Override
    public void error(Exception exception) {
        if (this.xW <= 3) {
            Log.e("GAV4", null, exception);
        }
    }

    @Override
    public void error(String string) {
        if (this.xW <= 3) {
            Log.e("GAV4", this.ae(string));
        }
    }

    @Override
    public int getLogLevel() {
        return this.xW;
    }

    @Override
    public void info(String string) {
        if (this.xW <= 1) {
            Log.i("GAV4", this.ae(string));
        }
    }

    @Override
    public void setLogLevel(int n) {
        this.xW = n;
    }

    @Override
    public void verbose(String string) {
        if (this.xW <= 0) {
            Log.v("GAV4", this.ae(string));
        }
    }

    @Override
    public void warn(String string) {
        if (this.xW <= 2) {
            Log.w("GAV4", this.ae(string));
        }
    }
}

