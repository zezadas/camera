/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.internal.dw;
import com.google.android.gms.internal.ea;
import com.google.android.gms.internal.eb;
import com.google.android.gms.internal.ec;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

@ez
public class dx
extends gg
implements ServiceConnection {
    private Context mContext;
    private final Object mw = new Object();
    private boolean sl = false;
    private el sm;
    private dw sn;
    private ec so;
    private List<ea> sp = null;
    private ee sq;

    public dx(Context context, el el, ee ee) {
        this.mContext = context;
        this.sm = el;
        this.sq = ee;
        this.sn = new dw(context);
        this.so = ec.j(this.mContext);
        this.sp = this.so.d(10);
    }

    private void a(final ea ea, String string, String string2) {
        final Intent intent = new Intent();
        intent.putExtra("RESPONSE_CODE", 0);
        intent.putExtra("INAPP_PURCHASE_DATA", string);
        intent.putExtra("INAPP_DATA_SIGNATURE", string2);
        gr.wC.post(new Runnable(){

            @Override
            public void run() {
                try {
                    if (dx.this.sq.a(ea.sB, -1, intent)) {
                        dx.this.sm.a(new eb(dx.this.mContext, ea.sC, true, -1, intent, ea));
                        return;
                    }
                    dx.this.sm.a(new eb(dx.this.mContext, ea.sC, false, -1, intent, ea));
                    return;
                }
                catch (RemoteException var1_1) {
                    gs.W("Fail to verify and dispatch pending transaction");
                    return;
                }
            }
        });
    }

    private void b(long l) {
        do {
            if (this.c(l)) continue;
            gs.W("Timeout waiting for pending transaction to be processed.");
        } while (!this.sl);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean c(long l) {
        l = 60000 - (SystemClock.elapsedRealtime() - l);
        if (l <= 0) {
            return false;
        }
        try {
            this.mw.wait(l);
            do {
                return true;
                break;
            } while (true);
        }
        catch (InterruptedException var3_2) {
            gs.W("waitWithTimeout_lock interrupted");
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void cp() {
        if (!this.sp.isEmpty()) {
            HashMap<String, ea> hashMap = new HashMap<String, ea>();
            for (ea ea : this.sp) {
                hashMap.put(ea.sC, ea);
            }
            Object object = null;
            while ((object = this.sn.d(this.mContext.getPackageName(), (String)object)) != null && ed.b((Bundle)object) == 0) {
                ArrayList<String> arrayList = object.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> arrayList2 = object.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> arrayList3 = object.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                object = object.getString("INAPP_CONTINUATION_TOKEN");
                for (int i = 0; i < arrayList.size(); ++i) {
                    if (!hashMap.containsKey(arrayList.get(i))) continue;
                    String string = arrayList.get(i);
                    String string2 = arrayList2.get(i);
                    String string3 = arrayList3.get(i);
                    ea ea2 = (ea)hashMap.get(string);
                    String string4 = ed.D(string2);
                    if (!ea2.sB.equals(string4)) continue;
                    this.a(ea2, string2, string3);
                    hashMap.remove(string);
                }
                if (object != null && !hashMap.isEmpty()) continue;
            }
            for (String string : hashMap.keySet()) {
                this.so.a((ea)hashMap.get(string));
            }
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
            Context context = this.mContext;
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            Context context2 = this.mContext;
            context.bindService(intent, this, 1);
            this.b(SystemClock.elapsedRealtime());
            this.mContext.unbindService(this);
            this.sn.destroy();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onServiceConnected(ComponentName object, IBinder iBinder) {
        object = this.mw;
        synchronized (object) {
            this.sn.r(iBinder);
            this.cp();
            this.sl = true;
            this.mw.notify();
            return;
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        gs.U("In-app billing service disconnected.");
        this.sn.destroy();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onStop() {
        Object object = this.mw;
        synchronized (object) {
            this.mContext.unbindService(this);
            this.sn.destroy();
            return;
        }
    }

}

