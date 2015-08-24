/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.tagmanager.av;
import com.google.android.gms.tagmanager.aw;
import com.google.android.gms.tagmanager.bm;

class bn {
    bn() {
    }

    int nP() {
        return Build.VERSION.SDK_INT;
    }

    public bm ox() {
        if (this.nP() < 8) {
            return new av();
        }
        return new aw();
    }
}

