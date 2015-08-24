/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.tagmanager.ar;
import com.google.android.gms.tagmanager.at;
import com.google.android.gms.tagmanager.au;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.bo;
import com.google.android.gms.tagmanager.cb;
import com.google.android.gms.tagmanager.cx;

class cy
extends cx {
    private static cy arA;
    private static final Object yc;
    private Context arq;
    private at arr;
    private volatile ar ars;
    private int art = 1800000;
    private boolean aru = true;
    private boolean arv = false;
    private boolean arw = true;
    private au arx;
    private bo ary;
    private boolean arz;
    private boolean connected = true;
    private Handler handler;

    static {
        yc = new Object();
    }

    private cy() {
        this.arx = new au(){

            @Override
            public void z(boolean bl) {
                cy.this.a(bl, cy.this.connected);
            }
        };
        this.arz = false;
    }

    private void ea() {
        this.ary = new bo(this);
        this.ary.z(this.arq);
    }

    private void eb() {
        this.handler = new Handler(this.arq.getMainLooper(), new Handler.Callback(){

            @Override
            public boolean handleMessage(Message message) {
                if (1 == message.what && yc.equals(message.obj)) {
                    cy.this.dispatch();
                    if (!(cy.this.art <= 0 || cy.this.arz)) {
                        cy.this.handler.sendMessageDelayed(cy.this.handler.obtainMessage(1, yc), cy.this.art);
                    }
                }
                return true;
            }
        });
        if (this.art > 0) {
            this.handler.sendMessageDelayed(this.handler.obtainMessage(1, yc), this.art);
        }
    }

    public static cy pw() {
        if (arA == null) {
            arA = new cy();
        }
        return arA;
    }

    @Override
    void A(boolean bl) {
        synchronized (this) {
            this.a(this.arz, bl);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    void a(Context context, ar ar) {
        synchronized (this) {
            Context context2 = this.arq;
            if (context2 == null) {
                this.arq = context.getApplicationContext();
                if (this.ars == null) {
                    void var2_2;
                    this.ars = var2_2;
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
        if (this.arz == var1_1 && (var3_3 = this.connected) == var2_2) {
            // MONITOREXIT : this
            return;
        }
        if ((var1_1 || !var2_2) && this.art > 0) {
            this.handler.removeMessages(1, cy.yc);
        }
        if (!var1_1 && var2_2 && this.art > 0) {
            this.handler.sendMessageDelayed(this.handler.obtainMessage(1, cy.yc), this.art);
        }
        var5_4 = new StringBuilder().append("PowerSaveMode ");
        if (var1_1) ** GOTO lbl-1000
        if (var2_2) {
            var4_5 = "terminated.";
        } else lbl-1000: // 2 sources:
        {
            var4_5 = "initiated.";
        }
        bh.V(var5_4.append(var4_5).toString());
        this.arz = var1_1;
        this.connected = var2_2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void dispatch() {
        synchronized (this) {
            if (!this.arv) {
                bh.V("Dispatch call queued. Dispatch will run once initialization is complete.");
                this.aru = true;
            } else {
                this.ars.b(new Runnable(){

                    @Override
                    public void run() {
                        cy.this.arr.dispatch();
                    }
                });
            }
            return;
        }
    }

    @Override
    void ed() {
        synchronized (this) {
            if (!this.arz && this.connected && this.art > 0) {
                this.handler.removeMessages(1, yc);
                this.handler.sendMessage(this.handler.obtainMessage(1, yc));
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    at px() {
        synchronized (this) {
            if (this.arr == null) {
                if (this.arq == null) {
                    throw new IllegalStateException("Cant get a store unless we have a context");
                }
                this.arr = new cb(this.arx, this.arq);
            }
            if (this.handler == null) {
                this.eb();
            }
            this.arv = true;
            if (this.aru) {
                this.dispatch();
                this.aru = false;
            }
            if (this.ary != null) return this.arr;
            if (!this.arw) return this.arr;
            this.ea();
            return this.arr;
        }
    }

}

