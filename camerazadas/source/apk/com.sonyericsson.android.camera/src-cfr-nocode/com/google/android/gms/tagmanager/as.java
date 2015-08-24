/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.tagmanager.ar;
import com.google.android.gms.tagmanager.at;
import java.util.concurrent.LinkedBlockingQueue;

/*
 * Exception performing whole class analysis.
 */
class as
extends Thread
implements ar {
    private static as app;
    private final LinkedBlockingQueue<Runnable> apo;
    private volatile at apq;
    private volatile boolean mClosed;
    private final Context mContext;
    private volatile boolean yU;

    private as(Context var1);

    static as Z(Context var0);

    static /* synthetic */ at a(as var0);

    static /* synthetic */ at a(as var0, at var1);

    static /* synthetic */ Context b(as var0);

    private String g(Throwable var1);

    @Override
    public void b(Runnable var1);

    void b(String var1, long var2);

    @Override
    public void cC(String var1);

    @Override
    public void run();

}

