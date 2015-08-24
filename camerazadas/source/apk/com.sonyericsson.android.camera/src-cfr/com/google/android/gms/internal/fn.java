/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.internal.ai;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fo;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.gi;
import com.google.android.gms.internal.go;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.u;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONObject;

@ez
public class fn
extends gg {
    private final Object mw = new Object();
    private final fk sZ;
    private final fo tU;
    private Future<fz> tV;
    private final fd.a tm;
    private final fz.a tn;

    public fn(Context context, u u, ai ai, fz.a a, fd.a a2) {
        this(a, a2, new fo(context, u, ai, new go(), a));
    }

    fn(fz.a a, fd.a a2, fo fo) {
        this.tn = a;
        this.sZ = a.vw;
        this.tm = a2;
        this.tU = fo;
    }

    private fz r(int n) {
        return new fz(this.tn.vv.tx, null, null, n, null, null, this.sZ.orientation, this.sZ.qj, this.tn.vv.tA, false, null, null, null, null, null, this.sZ.tJ, this.tn.lH, this.sZ.tH, this.tn.vs, this.sZ.tM, this.sZ.tN, this.tn.vp, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public void co() {
        Object object;
        int n;
        object = this.mw;
        // MONITORENTER : object
        this.tV = gi.submit(this.tU);
        // MONITOREXIT : object
        try {
            object = this.tV.get(60000, TimeUnit.MILLISECONDS);
            n = -2;
        }
        catch (TimeoutException var2_2) {
            gs.W("Timed out waiting for native ad.");
            n = 2;
            object = null;
        }
        catch (ExecutionException var2_3) {
            n = 0;
            object = null;
        }
        catch (InterruptedException var2_4) {
            object = null;
            n = -1;
        }
        catch (CancellationException var2_5) {
            object = null;
            n = -1;
        }
        if (object == null) {
            object = this.r(n);
        }
        gr.wC.post(new Runnable((fz)object){
            final /* synthetic */ fz ts;

            @Override
            public void run() {
                fn.this.tm.a(this.ts);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onStop() {
        Object object = this.mw;
        synchronized (object) {
            if (this.tV != null) {
                this.tV.cancel(true);
            }
            return;
        }
    }

}

