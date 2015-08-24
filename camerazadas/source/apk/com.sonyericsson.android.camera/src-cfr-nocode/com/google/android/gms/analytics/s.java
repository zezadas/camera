/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.af;
import com.google.android.gms.analytics.f;
import com.google.android.gms.internal.hb;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

/*
 * Exception performing whole class analysis.
 */
class s
extends Thread
implements f {
    private static s yX;
    private volatile boolean mClosed;
    private final Context mContext;
    private final LinkedBlockingQueue<Runnable> yT;
    private volatile boolean yU;
    private volatile List<hb> yV;
    private volatile String yW;
    private volatile af yY;

    private s(Context var1);

    static s B(Context var0);

    static String C(Context var0);

    static /* synthetic */ Context a(s var0);

    static /* synthetic */ String a(s var0, String var1);

    static /* synthetic */ void a(s var0, Map var1);

    static int ah(String var0);

    static /* synthetic */ String b(s var0);

    static /* synthetic */ boolean b(s var0, Map var1);

    static /* synthetic */ List c(s var0);

    static /* synthetic */ void c(s var0, Map var1);

    static /* synthetic */ af d(s var0);

    static /* synthetic */ String d(s var0, Map var1);

    private String g(Throwable var1);

    private String v(Map<String, String> var1);

    private boolean w(Map<String, String> var1);

    private void x(Map<String, String> var1);

    private void y(Map<String, String> var1);

    void b(Runnable var1);

    @Override
    public void dH();

    @Override
    public void dN();

    @Override
    public LinkedBlockingQueue<Runnable> dO();

    @Override
    public void dispatch();

    @Override
    public Thread getThread();

    protected void init();

    @Override
    public void run();

    @Override
    public void u(Map<String, String> var1);

}

