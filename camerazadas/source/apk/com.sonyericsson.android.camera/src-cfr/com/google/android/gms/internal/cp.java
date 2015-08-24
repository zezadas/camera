/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.cq;
import com.google.android.gms.internal.ct;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;

@ez
public final class cp
implements cq.a {
    private final ct lq;
    private final Context mContext;
    private final av ml;
    private final Object mw = new Object();
    private final String qo;
    private final long qp;
    private final cl qq;
    private final ay qr;
    private final gt qs;
    private cu qt;
    private int qu = -2;

    /*
     * Enabled aggressive block sorting
     */
    public cp(Context context, String string, ct ct, cm cm, cl cl, av av, ay ay, gt gt) {
        this.mContext = context;
        this.lq = ct;
        this.qq = cl;
        this.qo = "com.google.ads.mediation.customevent.CustomEventAdapter".equals(string) ? this.bE() : string;
        long l = cm.qe != -1 ? cm.qe : 10000;
        this.qp = l;
        this.ml = av;
        this.qr = ay;
        this.qs = gt;
    }

    private void a(long l, long l2, long l3, long l4) {
        while (this.qu == -2) {
            this.b(l, l2, l3, l4);
        }
        return;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void a(co co) {
        try {
            if (this.qs.wF < 4100000) {
                if (this.qr.og) {
                    this.qt.a(e.k(this.mContext), this.ml, this.qq.qc, co);
                    return;
                }
                this.qt.a(e.k(this.mContext), this.qr, this.ml, this.qq.qc, (cv)co);
                return;
            }
            if (this.qr.og) {
                this.qt.a(e.k(this.mContext), this.ml, this.qq.qc, this.qq.pW, (cv)co);
                return;
            }
        }
        catch (RemoteException var1_2) {
            gs.d("Could not request ad from mediation adapter.", var1_2);
            this.j(5);
            return;
        }
        this.qt.a(e.k(this.mContext), this.qr, this.ml, this.qq.qc, this.qq.pW, co);
    }

    private void b(long l, long l2, long l3, long l4) {
        long l5 = SystemClock.elapsedRealtime();
        l = l2 - (l5 - l);
        l2 = l4 - (l5 - l3);
        if (l <= 0 || l2 <= 0) {
            gs.U("Timed out waiting for adapter.");
            this.qu = 3;
            return;
        }
        try {
            this.mw.wait(Math.min(l, l2));
            return;
        }
        catch (InterruptedException var11_6) {
            this.qu = -1;
            return;
        }
    }

    private String bE() {
        try {
            if (!TextUtils.isEmpty((CharSequence)this.qq.qa)) {
                if (this.lq.y(this.qq.qa)) {
                    return "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
                }
                return "com.google.ads.mediation.customevent.CustomEventAdapter";
            }
        }
        catch (RemoteException var1_1) {
            gs.W("Fail to determine the custom event's version, assuming the old one.");
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    private cu bF() {
        gs.U("Instantiating mediation adapter: " + this.qo);
        try {
            cu cu = this.lq.x(this.qo);
            return cu;
        }
        catch (RemoteException var1_2) {
            gs.a("Could not instantiate mediation adapter: " + this.qo, var1_2);
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public cq b(long l, long l2) {
        Object object = this.mw;
        synchronized (object) {
            long l3 = SystemClock.elapsedRealtime();
            Object object2 = new co();
            gr.wC.post(new Runnable((co)object2){
                final /* synthetic */ co qv;

                /*
                 * Enabled aggressive block sorting
                 * Enabled unnecessary exception pruning
                 */
                @Override
                public void run() {
                    Object object = cp.this.mw;
                    synchronized (object) {
                        if (cp.this.qu != -2) {
                            return;
                        }
                        cp.this.qt = cp.this.bF();
                        if (cp.this.qt == null) {
                            cp.this.j(4);
                            return;
                        }
                        this.qv.a(cp.this);
                        cp.this.a(this.qv);
                        return;
                    }
                }
            });
            this.a(l3, this.qp, l, l2);
            return new cq(this.qq, this.qt, this.qo, (co)object2, this.qu);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void cancel() {
        Object object = this.mw;
        synchronized (object) {
            try {
                if (this.qt != null) {
                    this.qt.destroy();
                }
            }
            catch (RemoteException var2_2) {
                gs.d("Could not destroy mediation adapter.", var2_2);
            }
            this.qu = -1;
            this.mw.notify();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void j(int n) {
        Object object = this.mw;
        synchronized (object) {
            this.qu = n;
            this.mw.notify();
            return;
        }
    }

}

