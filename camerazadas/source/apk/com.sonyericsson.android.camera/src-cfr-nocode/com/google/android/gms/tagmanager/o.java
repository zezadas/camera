/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.ol;
import com.google.android.gms.tagmanager.Container;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.google.android.gms.tagmanager.TagManager;
import com.google.android.gms.tagmanager.bg;
import com.google.android.gms.tagmanager.cg;
import com.google.android.gms.tagmanager.cr;
import com.google.android.gms.tagmanager.n;
import com.google.android.gms.tagmanager.r;

/*
 * Exception performing whole class analysis.
 */
class o
extends BaseImplementation.AbstractPendingResult<ContainerHolder> {
    private final Looper IH;
    private a aoA;
    private final String aoc;
    private long aoh;
    private final TagManager aoo;
    private final d aor;
    private final cg aos;
    private final int aot;
    private f aou;
    private volatile n aov;
    private volatile boolean aow;
    private c.j aox;
    private String aoy;
    private e aoz;
    private final Context mContext;
    private final ju yD;

    o(Context var1, TagManager var2, Looper var3, String var4, int var5, f var6, e var7, ju var8, cg var9);

    public o(Context var1, TagManager var2, Looper var3, String var4, int var5, r var6);

    private void T(boolean var1);

    static /* synthetic */ ju a(o var0);

    private void a(c.j var1);

    private void a(c.j var1, long var2, boolean var4);

    static /* synthetic */ void a(o var0, long var1);

    static /* synthetic */ void a(o var0, c.j var1);

    static /* synthetic */ void a(o var0, c.j var1, long var2, boolean var4);

    static /* synthetic */ boolean b(o var0);

    static /* synthetic */ c.j c(o var0);

    static /* synthetic */ long d(o var0);

    static /* synthetic */ boolean e(o var0);

    static /* synthetic */ n f(o var0);

    static /* synthetic */ cg g(o var0);

    private boolean oa();

    private void w(long var1);

    protected ContainerHolder aE(Status var1);

    @Override
    protected /* synthetic */ Result c(Status var1);

    void cr(String var1);

    String nU();

    public void nX();

    public void nY();

    public void nZ();

    static interface a {
        public boolean b(Container var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class b
    implements bg<ol.a> {
        final /* synthetic */ o aoB;

        private b(o var1);

        /* synthetic */ b(o var1,  var2);

        public void a(ol.a var1);

        @Override
        public void a(bg.a var1);

        @Override
        public /* synthetic */ void l(Object var1);

        @Override
        public void ob();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class c
    implements bg<c.j> {
        final /* synthetic */ o aoB;

        private c(o var1);

        /* synthetic */ c(o var1,  var2);

        @Override
        public void a(bg.a var1);

        public void b(c.j var1);

        @Override
        public /* synthetic */ void l(Object var1);

        @Override
        public void ob();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class d
    implements n.a {
        final /* synthetic */ o aoB;

        private d(o var1);

        /* synthetic */ d(o var1,  var2);

        @Override
        public void cr(String var1);

        @Override
        public String nU();

        @Override
        public void nW();
    }

    static interface e
    extends Releasable {
        public void a(bg<c.j> var1);

        public void cu(String var1);

        public void e(long var1, String var3);
    }

    static interface f
    extends Releasable {
        public void a(bg<ol.a> var1);

        public void b(ol.a var1);

        public cr.c ff(int var1);

        public void oc();
    }

}

