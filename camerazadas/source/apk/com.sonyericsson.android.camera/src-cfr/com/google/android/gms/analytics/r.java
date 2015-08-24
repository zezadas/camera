/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.af;
import com.google.android.gms.analytics.c;
import com.google.android.gms.analytics.f;
import com.google.android.gms.analytics.q;
import com.google.android.gms.analytics.z;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.jw;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;

class r
implements af,
c.b,
c.c {
    private final Context mContext;
    private boolean yA;
    private boolean yB;
    private boolean yC;
    private ju yD;
    private long yE = 300000;
    private com.google.android.gms.analytics.d yd;
    private final f ye;
    private boolean yg;
    private volatile long yq;
    private volatile a yr;
    private volatile com.google.android.gms.analytics.b ys;
    private com.google.android.gms.analytics.d yt;
    private final GoogleAnalytics yu;
    private final Queue<d> yv = new ConcurrentLinkedQueue<d>();
    private volatile int yw;
    private volatile Timer yx;
    private volatile Timer yy;
    private volatile Timer yz;

    r(Context context, f f) {
        this(context, f, null, GoogleAnalytics.getInstance(context));
    }

    r(Context context, f f, com.google.android.gms.analytics.d d, GoogleAnalytics googleAnalytics) {
        this.yt = d;
        this.mContext = context;
        this.ye = f;
        this.yu = googleAnalytics;
        this.yD = jw.hA();
        this.yw = 0;
        this.yr = a.yN;
    }

    private Timer a(Timer timer) {
        if (timer != null) {
            timer.cancel();
        }
        return null;
    }

    private void cC() {
        synchronized (this) {
            if (this.ys != null && this.yr == a.yI) {
                this.yr = a.yM;
                this.ys.disconnect();
            }
            return;
        }
    }

    private void ef() {
        this.yx = this.a(this.yx);
        this.yy = this.a(this.yy);
        this.yz = this.a(this.yz);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private void eh() {
        // MONITORENTER : this
        if (!Thread.currentThread().equals(this.ye.getThread())) {
            this.ye.dO().add(()new Runnable(){

                @Override
                public void run() {
                    r.this.eh();
                }
            });
            return;
        }
        if (this.yA) {
            this.dH();
        }
        switch (.yG[this.yr.ordinal()]) {
            case 1: {
                while (!this.yv.isEmpty()) {
                    var1_1 = this.yv.poll();
                    z.V("Sending hit to store  " + var1_1);
                    this.yd.a(var1_1.em(), var1_1.en(), var1_1.getPath(), var1_1.eo());
                }
                ** GOTO lbl19
            }
            case 7: {
                z.V("Blocked. Dropping hits.");
                this.yv.clear();
                return;
            }
lbl19: // 1 sources:
            if (!this.yg) return;
            {
                this.ei();
                return;
            }
            case 2: {
                ** GOTO lbl32
            }
            case 6: {
                z.V("Need to reconnect");
                if (!this.yv.isEmpty()) {
                    this.ek();
                    return;
                }
                // MONITOREXIT : this
                return;
            }
        }
        return;
lbl32: // 1 sources:
        do {
            if (this.yv.isEmpty()) {
                this.yq = this.yD.elapsedRealtime();
                return;
            }
            var1_2 = this.yv.peek();
            z.V("Sending hit to service   " + var1_2);
            if (!this.yu.isDryRunEnabled()) {
                this.ys.a(var1_2.em(), var1_2.en(), var1_2.getPath(), var1_2.eo());
            } else {
                z.V("Dry run enabled. Hit not actually sent to service.");
            }
            this.yv.poll();
        } while (true);
    }

    private void ei() {
        this.yd.dispatch();
        this.yg = false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void ej() {
        synchronized (this) {
            Object object = this.yr;
            a a = a.yJ;
            if (object != a) {
                if (this.mContext != null && "com.google.android.gms".equals(this.mContext.getPackageName())) {
                    this.yr = a.yK;
                    this.ys.disconnect();
                    z.W("Attempted to fall back to local store from service.");
                } else {
                    this.ef();
                    z.V("falling back to local store");
                    if (this.yt != null) {
                        this.yd = this.yt;
                    } else {
                        object = q.dZ();
                        object.a(this.mContext, this.ye);
                        this.yd = object.ec();
                    }
                    this.yr = a.yJ;
                    this.eh();
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void ek() {
        synchronized (this) {
            a a;
            a a2;
            if (!(this.yC || this.ys == null || (a2 = this.yr) == (a = a.yJ))) {
                try {
                    ++this.yw;
                    this.a(this.yy);
                    this.yr = a.yH;
                    this.yy = new Timer("Failed Connect");
                    this.yy.schedule((TimerTask)new c(), 3000);
                    z.V("connecting to Analytics service");
                    this.ys.connect();
                }
                catch (SecurityException var1_2) {
                    z.W("security exception on connectToService");
                    this.ej();
                }
            } else {
                z.W("client not initialized.");
                this.ej();
            }
            return;
        }
    }

    private void el() {
        this.yx = this.a(this.yx);
        this.yx = new Timer("Service Reconnect");
        this.yx.schedule((TimerTask)new e(), 5000);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void a(int n, Intent intent) {
        synchronized (this) {
            this.yr = a.yL;
            if (this.yw < 2) {
                z.W("Service unavailable (code=" + n + "), will retry.");
                this.el();
            } else {
                z.W("Service unavailable (code=" + n + "), using local store.");
                this.ej();
            }
            return;
        }
    }

    @Override
    public void b(Map<String, String> map, long l, String string, List<hb> list) {
        z.V("putHit called");
        this.yv.add(new d(map, l, string, list));
        this.eh();
    }

    @Override
    public void dH() {
        z.V("clearHits called");
        this.yv.clear();
        switch (.yG[this.yr.ordinal()]) {
            default: {
                this.yA = true;
                return;
            }
            case 1: {
                this.yd.l(0);
                this.yA = false;
                return;
            }
            case 2: 
        }
        this.ys.dH();
        this.yA = false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void dN() {
        synchronized (this) {
            boolean bl = this.yC;
            if (!bl) {
                z.V("setForceLocalDispatch called.");
                this.yC = true;
                switch (.yG[this.yr.ordinal()]) {
                    case 1: 
                    case 4: 
                    case 5: 
                    case 6: {
                        break;
                    }
                    case 2: {
                        this.cC();
                        break;
                    }
                    case 3: {
                        this.yB = true;
                        break;
                    }
                }
            }
            return;
        }
    }

    @Override
    public void dispatch() {
        switch (.yG[this.yr.ordinal()]) {
            default: {
                this.yg = true;
            }
            case 2: {
                return;
            }
            case 1: 
        }
        this.ei();
    }

    @Override
    public void eg() {
        if (this.ys != null) {
            return;
        }
        this.ys = new com.google.android.gms.analytics.c(this.mContext, this, this);
        this.ek();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onConnected() {
        synchronized (this) {
            this.yy = this.a(this.yy);
            this.yw = 0;
            z.V("Connected to service");
            this.yr = a.yI;
            if (this.yB) {
                this.cC();
                this.yB = false;
            } else {
                this.eh();
                this.yz = this.a(this.yz);
                this.yz = new Timer("disconnect check");
                this.yz.schedule((TimerTask)new b(), this.yE);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onDisconnected() {
        synchronized (this) {
            if (this.yr == a.yK) {
                z.V("Service blocked.");
                this.ef();
            } else if (this.yr == a.yM) {
                z.V("Disconnected from service");
                this.ef();
                this.yr = a.yN;
            } else {
                z.V("Unexpected disconnect.");
                this.yr = a.yL;
                if (this.yw < 2) {
                    this.el();
                } else {
                    this.ej();
                }
            }
            return;
        }
    }

    private static enum a {
        yH,
        yI,
        yJ,
        yK,
        yL,
        yM,
        yN;
        

        private a() {
        }
    }

    private class b
    extends TimerTask {
        private b() {
        }

        @Override
        public void run() {
            if (r.this.yr == a.yI && r.this.yv.isEmpty() && r.this.yq + r.this.yE < r.this.yD.elapsedRealtime()) {
                z.V("Disconnecting due to inactivity");
                r.this.cC();
                return;
            }
            r.this.yz.schedule((TimerTask)new b(), r.this.yE);
        }
    }

    private class c
    extends TimerTask {
        private c() {
        }

        @Override
        public void run() {
            if (r.this.yr == a.yH) {
                r.this.ej();
            }
        }
    }

    private static class d {
        private final Map<String, String> yP;
        private final long yQ;
        private final String yR;
        private final List<hb> yS;

        public d(Map<String, String> map, long l, String string, List<hb> list) {
            this.yP = map;
            this.yQ = l;
            this.yR = string;
            this.yS = list;
        }

        public Map<String, String> em() {
            return this.yP;
        }

        public long en() {
            return this.yQ;
        }

        public List<hb> eo() {
            return this.yS;
        }

        public String getPath() {
            return this.yR;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("PATH: ");
            stringBuilder.append(this.yR);
            if (this.yP != null) {
                stringBuilder.append("  PARAMS: ");
                for (Map.Entry<String, String> entry : this.yP.entrySet()) {
                    stringBuilder.append(entry.getKey());
                    stringBuilder.append("=");
                    stringBuilder.append(entry.getValue());
                    stringBuilder.append(",  ");
                }
            }
            return stringBuilder.toString();
        }
    }

    private class e
    extends TimerTask {
        private e() {
        }

        @Override
        public void run() {
            r.this.ek();
        }
    }

}

