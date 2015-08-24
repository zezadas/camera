/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.SystemClock;
import com.google.android.gms.internal.ju;

public final class jw
implements ju {
    private static jw MS;

    public static ju hA() {
        synchronized (jw.class) {
            if (MS == null) {
                MS = new jw();
            }
            jw jw = MS;
            return jw;
        }
    }

    @Override
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }
}

