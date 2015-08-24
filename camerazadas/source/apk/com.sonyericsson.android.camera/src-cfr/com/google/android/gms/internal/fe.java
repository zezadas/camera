/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.ck;
import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.cq;
import com.google.android.gms.internal.ct;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fc;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import java.util.List;
import org.json.JSONObject;

@ez
public class fe
extends gg
implements gw.a {
    private final ct lq;
    private final Context mContext;
    private final gv md;
    private final Object mw = new Object();
    private cm pR;
    private final Object sV = new Object();
    private fk sZ;
    private final fd.a tm;
    private final fz.a tn;
    private boolean to = false;
    private ck tp;
    private cq tq;

    public fe(Context context, fz.a a, gv gv, ct ct, fd.a a2) {
        this.mContext = context;
        this.tn = a;
        this.sZ = a.vw;
        this.md = gv;
        this.lq = ct;
        this.tm = a2;
        this.pR = a.vq;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void a(fi fi, long l) throws a {
        Object object = this.sV;
        synchronized (object) {
            this.tp = new ck(this.mContext, fi, this.lq, this.pR);
        }
        this.tq = this.tp.a(l, 60000);
        switch (this.tq.qx) {
            default: {
                throw new a("Unexpected mediation result: " + this.tq.qx, 0);
            }
            case 1: {
                throw new a("No fill from any mediation ad networks.", 3);
            }
            case 0: 
        }
    }

    private boolean c(long l) throws a {
        l = 60000 - (SystemClock.elapsedRealtime() - l);
        if (l <= 0) {
            return false;
        }
        try {
            this.mw.wait(l);
            return true;
        }
        catch (InterruptedException var3_2) {
            throw new a("Ad request cancelled.", -1);
        }
    }

    private void f(long l) throws a {
        gr.wC.post(new Runnable(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void run() {
                Object object = fe.this.mw;
                synchronized (object) {
                    if (fe.c((fe)fe.this).errorCode != -2) {
                        return;
                    }
                    fe.this.md.du().a(fe.this);
                    if (fe.c((fe)fe.this).errorCode == -3) {
                        gs.V("Loading URL in WebView: " + fe.c((fe)fe.this).rP);
                        fe.this.md.loadUrl(fe.c((fe)fe.this).rP);
                    } else {
                        gs.V("Loading HTML in WebView.");
                        fe.this.md.loadDataWithBaseURL(gj.L(fe.c((fe)fe.this).rP), fe.c((fe)fe.this).tG, "text/html", "UTF-8", null);
                    }
                    return;
                }
            }
        });
        this.h(l);
    }

    private void h(long l) throws a {
        do {
            if (this.c(l)) continue;
            throw new a("Timed out waiting for WebView to finish loading.", 2);
        } while (!this.to);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void a(gv object) {
        object = this.mw;
        synchronized (object) {
            gs.S("WebView finished loading.");
            this.to = true;
            this.mw.notify();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void co() {
        Object object = this.mw;
        synchronized (object) {
            long l;
            gs.S("AdRendererBackgroundTask started.");
            Object object2 = this.tn.vv;
            int n = this.tn.errorCode;
            try {
                l = SystemClock.elapsedRealtime();
                if (this.sZ.tI) {
                    this.a((fi)object2, l);
                } else {
                    if (this.sZ.tO) {
                        this.g(l);
                    }
                    this.f(l);
                }
            }
            catch (a var7_5) {
                n = var7_5.getErrorCode();
                if (n == 3 || n == -1) {
                    gs.U(var7_5.getMessage());
                } else {
                    gs.W(var7_5.getMessage());
                }
                this.sZ = this.sZ == null ? new fk(n) : new fk(n, this.sZ.qj);
                gr.wC.post(new Runnable(){

                    @Override
                    public void run() {
                        fe.this.onStop();
                    }
                });
            }
            av av = object2.tx;
            gv gv = this.md;
            List<String> list = this.sZ.qf;
            List<String> list2 = this.sZ.qg;
            List<String> list3 = this.sZ.tK;
            int n2 = this.sZ.orientation;
            l = this.sZ.qj;
            String string = object2.tA;
            boolean bl = this.sZ.tI;
            object2 = this.tq != null ? this.tq.qy : null;
            cu cu = this.tq != null ? this.tq.qz : null;
            String string2 = this.tq != null ? this.tq.qA : AdMobAdapter.class.getName();
            cm cm = this.pR;
            co co = this.tq != null ? this.tq.qB : null;
            object2 = new fz(av, gv, list, n, list2, list3, n2, l, string, bl, (cl)object2, cu, string2, cm, co, this.sZ.tJ, this.tn.lH, this.sZ.tH, this.tn.vs, this.sZ.tM, this.sZ.tN, this.tn.vp, null);
            gr.wC.post(new Runnable((fz)object2){
                final /* synthetic */ fz ts;

                /*
                 * Enabled aggressive block sorting
                 * Enabled unnecessary exception pruning
                 */
                @Override
                public void run() {
                    Object object = fe.this.mw;
                    synchronized (object) {
                        fe.this.tm.a(this.ts);
                        return;
                    }
                }
            });
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void g(long l) throws a {
        int n;
        int n2;
        Object object = this.md.Y();
        if (object.og) {
            n = this.mContext.getResources().getDisplayMetrics().widthPixels;
            n2 = this.mContext.getResources().getDisplayMetrics().heightPixels;
        } else {
            n = object.widthPixels;
            n2 = object.heightPixels;
        }
        object = new fc(this, this.md, n, n2);
        gr.wC.post(new Runnable((fc)object){
            final /* synthetic */ fc tt;

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void run() {
                Object object = fe.this.mw;
                synchronized (object) {
                    if (fe.c((fe)fe.this).errorCode != -2) {
                        return;
                    }
                    fe.this.md.du().a(fe.this);
                    this.tt.b(fe.this.sZ);
                    return;
                }
            }
        });
        this.h(l);
        if (object.cA()) {
            gs.S("Ad-Network indicated no fill with passback URL.");
            throw new a("AdNetwork sent passback url", 3);
        }
        if (!object.cB()) {
            throw new a("AdNetwork timed out", 2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onStop() {
        Object object = this.sV;
        synchronized (object) {
            this.md.stopLoading();
            gj.a(this.md);
            if (this.tp != null) {
                this.tp.cancel();
            }
            return;
        }
    }

    private static final class a
    extends Exception {
        private final int tc;

        public a(String string, int n) {
            super(string);
            this.tc = n;
        }

        public int getErrorCode() {
            return this.tc;
        }
    }

}

