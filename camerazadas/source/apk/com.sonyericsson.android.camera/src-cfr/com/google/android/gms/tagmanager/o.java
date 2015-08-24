/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.jw;
import com.google.android.gms.internal.ol;
import com.google.android.gms.tagmanager.Container;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.TagManager;
import com.google.android.gms.tagmanager.bf;
import com.google.android.gms.tagmanager.bg;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.ce;
import com.google.android.gms.tagmanager.cg;
import com.google.android.gms.tagmanager.cp;
import com.google.android.gms.tagmanager.cq;
import com.google.android.gms.tagmanager.cr;
import com.google.android.gms.tagmanager.n;
import com.google.android.gms.tagmanager.r;

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

    /*
     * Enabled aggressive block sorting
     */
    o(Context object, TagManager tagManager, Looper looper, String string, int n, f f, e e, ju ju, cg cg) {
        Looper looper2 = looper == null ? Looper.getMainLooper() : looper;
        super(looper2);
        this.mContext = object;
        this.aoo = tagManager;
        object = looper;
        if (looper == null) {
            object = Looper.getMainLooper();
        }
        this.IH = object;
        this.aoc = string;
        this.aot = n;
        this.aou = f;
        this.aoz = e;
        this.aor = new d();
        this.aox = new c.j();
        this.yD = ju;
        this.aos = cg;
        if (this.oa()) {
            this.cr(ce.oJ().oL());
        }
    }

    public o(Context context, TagManager tagManager, Looper looper, String string, int n, r r) {
        this(context, tagManager, looper, string, n, new cq(context, string), new cp(context, string, r), jw.hA(), new bf(30, 900000, 5000, "refreshing", jw.hA()));
    }

    private void T(final boolean bl) {
        this.aou.a(new b());
        this.aoz.a(new c());
        cr.c c = this.aou.ff(this.aot);
        if (c != null) {
            this.aov = new n(this.aoo, this.IH, new Container(this.mContext, this.aoo.getDataLayer(), this.aoc, 0, c), this.aor);
        }
        this.aoA = new a(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public boolean b(Container container) {
                if (bl) {
                    if (container.getLastRefreshTime() + 43200000 >= o.this.yD.currentTimeMillis()) return true;
                    return false;
                }
                if (container.isDefault()) return false;
                return true;
            }
        };
        if (this.oa()) {
            this.aoz.e(0, "");
            return;
        }
        this.aou.oc();
    }

    private void a(c.j j) {
        synchronized (this) {
            if (this.aou != null) {
                ol.a a = new ol.a();
                a.asr = this.aoh;
                a.gs = new c.f();
                a.ass = j;
                this.aou.b(a);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void a(c.j object, long l, boolean bl) {
        synchronized (this) {
            if (!(bl && (bl = this.aow))) {
                if (!(this.isReady() && this.aov != null)) {
                    // empty if block
                }
                this.aox = object;
                this.aoh = l;
                this.w(Math.max(0, Math.min(43200000, this.aoh + 43200000 - this.yD.currentTimeMillis())));
                object = new Container(this.mContext, this.aoo.getDataLayer(), this.aoc, l, (c.j)object);
                if (this.aov == null) {
                    this.aov = new n(this.aoo, this.IH, (Container)object, this.aor);
                } else {
                    this.aov.a((Container)object);
                }
                if (!this.isReady() && this.aoA.b((Container)object)) {
                    this.b(this.aov);
                }
            }
            return;
        }
    }

    static /* synthetic */ c.j c(o o) {
        return o.aox;
    }

    private boolean oa() {
        ce ce = ce.oJ();
        if ((ce.oK() == ce.a.aqi || ce.oK() == ce.a.aqj) && this.aoc.equals(ce.getContainerId())) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void w(long l) {
        synchronized (this) {
            if (this.aoz == null) {
                bh.W("Refresh requested, but no network load scheduler.");
            } else {
                this.aoz.e(l, this.aox.gt);
            }
            return;
        }
    }

    protected ContainerHolder aE(Status status) {
        if (this.aov != null) {
            return this.aov;
        }
        if (status == Status.Jy) {
            bh.T("timer expired: setting result to failure");
        }
        return new n(status);
    }

    @Override
    protected /* synthetic */ Result c(Status status) {
        return this.aE(status);
    }

    void cr(String string) {
        synchronized (this) {
            this.aoy = string;
            if (this.aoz != null) {
                this.aoz.cu(string);
            }
            return;
        }
    }

    String nU() {
        synchronized (this) {
            String string = this.aoy;
            return string;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void nX() {
        Object object = this.aou.ff(this.aot);
        if (object != null) {
            object = new Container(this.mContext, this.aoo.getDataLayer(), this.aoc, 0, (cr.c)object);
            this.b(new n(this.aoo, this.IH, (Container)object, new n.a(){

                @Override
                public void cr(String string) {
                    o.this.cr(string);
                }

                @Override
                public String nU() {
                    return o.this.nU();
                }

                @Override
                public void nW() {
                    bh.W("Refresh ignored: container loaded as default only.");
                }
            }));
        } else {
            bh.T("Default was requested, but no default container was found");
            this.b(this.aE(new Status(10, "Default was requested, but no default container was found", null)));
        }
        this.aoz = null;
        this.aou = null;
    }

    public void nY() {
        this.T(false);
    }

    public void nZ() {
        this.T(true);
    }

    static interface a {
        public boolean b(Container var1);
    }

    private class b
    implements bg<ol.a> {
        private b() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public void a(ol.a a) {
            c.j j;
            if (a.ass != null) {
                j = a.ass;
            } else {
                c.f f = a.gs;
                j = new c.j();
                j.gs = f;
                j.gr = null;
                j.gt = f.version;
            }
            o.this.a(j, a.asr, true);
        }

        @Override
        public void a(bg.a a) {
            if (!o.this.aow) {
                o.this.w(0);
            }
        }

        @Override
        public /* synthetic */ void l(Object object) {
            this.a((ol.a)object);
        }

        @Override
        public void ob() {
        }
    }

    private class c
    implements bg<c.j> {
        private c() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void a(bg.a a) {
            if (o.this.aov != null) {
                o.this.b(o.this.aov);
            } else {
                o.this.b(o.this.aE(Status.Jy));
            }
            o.this.w(3600000);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public void b(c.j j) {
            o o = o.this;
            synchronized (o) {
                if (j.gs == null) {
                    if (o.c((o)o.this).gs == null) {
                        bh.T("Current resource is null; network resource is also null");
                        o.this.w(3600000);
                        return;
                    }
                    j.gs = o.c((o)o.this).gs;
                }
                o.this.a(j, o.this.yD.currentTimeMillis(), false);
                bh.V("setting refresh time to current time: " + o.this.aoh);
                if (!o.this.oa()) {
                    o.this.a(j);
                }
                return;
            }
        }

        @Override
        public /* synthetic */ void l(Object object) {
            this.b((c.j)object);
        }

        @Override
        public void ob() {
        }
    }

    private class d
    implements n.a {
        private d() {
        }

        @Override
        public void cr(String string) {
            o.this.cr(string);
        }

        @Override
        public String nU() {
            return o.this.nU();
        }

        @Override
        public void nW() {
            if (o.this.aos.eJ()) {
                o.this.w(0);
            }
        }
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

