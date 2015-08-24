/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.analytics.ab;
import com.google.android.gms.analytics.ae;
import com.google.android.gms.analytics.d;
import com.google.android.gms.analytics.e;
import com.google.android.gms.analytics.f;
import com.google.android.gms.analytics.m;
import com.google.android.gms.analytics.p;
import com.google.android.gms.analytics.t;
import com.google.android.gms.analytics.z;

class q
extends ae {
    private static final Object yc = new Object();
    private static q yo;
    private Context mContext;
    private Handler mHandler;
    private d yd;
    private volatile f ye;
    private int yf = 1800;
    private boolean yg = true;
    private boolean yh;
    private String yi;
    private boolean yj = true;
    private boolean yk = true;
    private e yl;
    private p ym;
    private boolean yn;

    private q() {
        this.yl = new e(){

            @Override
            public void z(boolean bl) {
                q.this.a(bl, q.this.yj);
            }
        };
        this.yn = false;
    }

    public static q dZ() {
        if (yo == null) {
            yo = new q();
        }
        return yo;
    }

    private void ea() {
        this.ym = new p(this);
        this.ym.z(this.mContext);
    }

    private void eb() {
        this.mHandler = new Handler(this.mContext.getMainLooper(), new Handler.Callback(){

            @Override
            public boolean handleMessage(Message message) {
                if (1 == message.what && yc.equals(message.obj)) {
                    t.ep().B(true);
                    q.this.dispatchLocalHits();
                    t.ep().B(false);
                    if (!(q.this.yf <= 0 || q.this.yn)) {
                        q.this.mHandler.sendMessageDelayed(q.this.mHandler.obtainMessage(1, yc), q.this.yf * 1000);
                    }
                }
                return true;
            }
        });
        if (this.yf > 0) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, yc), this.yf * 1000);
        }
    }

    @Override
    void A(boolean bl) {
        synchronized (this) {
            this.a(this.yn, bl);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    void a(Context context, f f) {
        synchronized (this) {
            Context context2 = this.mContext;
            if (context2 == null) {
                this.mContext = context.getApplicationContext();
                if (this.ye == null) {
                    void var2_2;
                    this.ye = var2_2;
                    if (this.yg) {
                        this.dispatchLocalHits();
                        this.yg = false;
                    }
                    if (this.yh) {
                        this.dN();
                        this.yh = false;
                    }
                }
            }
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    void a(boolean var1_1, boolean var2_2) {
        // MONITORENTER : this
        if (this.yn == var1_1 && (var3_3 = this.yj) == var2_2) {
            // MONITOREXIT : this
            return;
        }
        if ((var1_1 || !var2_2) && this.yf > 0) {
            this.mHandler.removeMessages(1, q.yc);
        }
        if (!var1_1 && var2_2 && this.yf > 0) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, q.yc), this.yf * 1000);
        }
        var5_4 = new StringBuilder().append("PowerSaveMode ");
        if (var1_1) ** GOTO lbl-1000
        if (var2_2) {
            var4_5 = "terminated.";
        } else lbl-1000: // 2 sources:
        {
            var4_5 = "initiated.";
        }
        z.V(var5_4.append(var4_5).toString());
        this.yn = var1_1;
        this.yj = var2_2;
    }

    void dN() {
        if (this.ye == null) {
            z.V("setForceLocalDispatch() queued. It will be called once initialization is complete.");
            this.yh = true;
            return;
        }
        t.ep().a(t.a.Ak);
        this.ye.dN();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    void dispatchLocalHits() {
        synchronized (this) {
            if (this.ye == null) {
                z.V("Dispatch call queued. Dispatch will run once initialization is complete.");
                this.yg = true;
            } else {
                t.ep().a(t.a.zX);
                this.ye.dispatch();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    d ec() {
        synchronized (this) {
            if (this.yd == null) {
                if (this.mContext == null) {
                    throw new IllegalStateException("Cant get a store unless we have a context");
                }
                this.yd = new ab(this.yl, this.mContext);
                if (this.yi != null) {
                    this.yd.dM().af(this.yi);
                    this.yi = null;
                }
            }
            if (this.mHandler == null) {
                this.eb();
            }
            if (this.ym != null) return this.yd;
            if (!this.yk) return this.yd;
            this.ea();
            return this.yd;
        }
    }

    @Override
    void ed() {
        synchronized (this) {
            if (!this.yn && this.yj && this.yf > 0) {
                this.mHandler.removeMessages(1, yc);
                this.mHandler.sendMessage(this.mHandler.obtainMessage(1, yc));
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    void setLocalDispatchPeriod(int n) {
        synchronized (this) {
            if (this.mHandler == null) {
                z.V("Dispatch period set with null handler. Dispatch will run once initialization is complete.");
                this.yf = n;
            } else {
                t.ep().a(t.a.zY);
                if (!this.yn && this.yj && this.yf > 0) {
                    this.mHandler.removeMessages(1, yc);
                }
                this.yf = n;
                if (n > 0 && !this.yn && this.yj) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, yc), n * 1000);
                }
            }
            return;
        }
    }

}

