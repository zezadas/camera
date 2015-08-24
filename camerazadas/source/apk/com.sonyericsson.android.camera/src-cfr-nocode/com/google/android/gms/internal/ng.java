/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.internal.nm;
import com.google.android.gms.internal.no;

/*
 * Exception performing whole class analysis.
 */
public class ng {
    private final no akF;
    private nm akG;

    public ng(Context var1, int var2, String var3, String var4, a var5, boolean var6);

    public /* varargs */ void a(long var1, String var3, byte[] var4, String ... var5);

    public /* varargs */ void b(String var1, byte[] var2, String ... var3);

    public void start();

    public void stop();

    public static interface a {
        public void b(PendingIntent var1);

        public void mU();

        public void mV();
    }

}

