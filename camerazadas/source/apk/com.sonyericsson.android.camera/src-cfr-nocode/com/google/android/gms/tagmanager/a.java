/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ju;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class a {
    private static a anQ;
    private static Object xz;
    private volatile long anM;
    private volatile long anN;
    private volatile long anO;
    private a anP;
    private volatile boolean mClosed;
    private final Context mContext;
    private final Thread wf;
    private volatile AdvertisingIdClient.Info xB;
    private final ju yD;

    static;

    private a(Context var1);

    a(Context var1, a var2, ju var3);

    static a W(Context var0);

    static /* synthetic */ Context a(a var0);

    static /* synthetic */ void b(a var0);

    private void nK();

    private void nL();

    void interrupt();

    public boolean isLimitAdTrackingEnabled();

    public String nJ();

    void start();

    public static interface a {
        public AdvertisingIdClient.Info nM();
    }

}

