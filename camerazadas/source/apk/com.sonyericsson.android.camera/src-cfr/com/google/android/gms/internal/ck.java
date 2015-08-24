/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.cp;
import com.google.android.gms.internal.cq;
import com.google.android.gms.internal.ct;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import java.util.Iterator;
import java.util.List;

@ez
public final class ck {
    private final ct lq;
    private final Context mContext;
    private final Object mw = new Object();
    private final fi pQ;
    private final cm pR;
    private boolean pS = false;
    private cp pT;

    public ck(Context context, fi fi, ct ct, cm cm) {
        this.mContext = context;
        this.pQ = fi;
        this.lq = ct;
        this.pR = cm;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public cq a(long l, long l2) {
        gs.S("Starting mediation.");
        Object object = this.pR.qd.iterator();
        block3 : while (object.hasNext()) {
            cl cl = object.next();
            gs.U("Trying mediation network: " + cl.pX);
            Iterator<String> iterator = cl.pY.iterator();
            do {
                if (!iterator.hasNext()) continue block3;
                String string = iterator.next();
                Object object2 = this.mw;
                synchronized (object2) {
                    if (this.pS) {
                        return new cq(-1);
                    }
                    this.pT = new cp(this.mContext, string, this.lq, this.pR, cl, this.pQ.tx, this.pQ.lH, this.pQ.lD);
                }
                object2 = this.pT.b(l, l2);
                if (object2.qx == 0) {
                    gs.S("Adapter succeeded.");
                    return object2;
                }
                if (object2.qz == null) continue;
                gr.wC.post(new Runnable((cq)object2){
                    final /* synthetic */ cq pU;

                    @Override
                    public void run() {
                        try {
                            this.pU.qz.destroy();
                            return;
                        }
                        catch (RemoteException var1_1) {
                            gs.d("Could not destroy mediation adapter.", var1_1);
                            return;
                        }
                    }
                });
            } while (true);
            break;
        }
        return new cq(1);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void cancel() {
        Object object = this.mw;
        synchronized (object) {
            this.pS = true;
            if (this.pT != null) {
                this.pT.cancel();
            }
            return;
        }
    }

}

