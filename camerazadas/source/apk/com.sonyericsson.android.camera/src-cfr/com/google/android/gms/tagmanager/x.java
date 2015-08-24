/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.util.Log;
import com.google.android.gms.tagmanager.bi;

class x
implements bi {
    private int xW = 5;

    x() {
    }

    @Override
    public void S(String string) {
        if (this.xW <= 3) {
            Log.d("GoogleTagManager", string);
        }
    }

    @Override
    public void T(String string) {
        if (this.xW <= 6) {
            Log.e("GoogleTagManager", string);
        }
    }

    @Override
    public void U(String string) {
        if (this.xW <= 4) {
            Log.i("GoogleTagManager", string);
        }
    }

    @Override
    public void V(String string) {
        if (this.xW <= 2) {
            Log.v("GoogleTagManager", string);
        }
    }

    @Override
    public void W(String string) {
        if (this.xW <= 5) {
            Log.w("GoogleTagManager", string);
        }
    }

    @Override
    public void b(String string, Throwable throwable) {
        if (this.xW <= 6) {
            Log.e("GoogleTagManager", string, throwable);
        }
    }

    @Override
    public void d(String string, Throwable throwable) {
        if (this.xW <= 5) {
            Log.w("GoogleTagManager", string, throwable);
        }
    }

    @Override
    public void setLogLevel(int n) {
        this.xW = n;
    }
}

