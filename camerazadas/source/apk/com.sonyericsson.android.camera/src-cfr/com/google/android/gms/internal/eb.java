/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.dw;
import com.google.android.gms.internal.ea;
import com.google.android.gms.internal.ec;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public final class eb
extends ek.a
implements ServiceConnection {
    private Context mContext;
    private boolean sD = false;
    private int sE;
    private Intent sF;
    private dw sn;
    private String su;
    private ea sy;

    public eb(Context context, String string, boolean bl, int n, Intent intent, ea ea) {
        this.su = string;
        this.sE = n;
        this.sF = intent;
        this.sD = bl;
        this.mContext = context;
        this.sy = ea;
    }

    @Override
    public void finishPurchase() {
        int n = ed.d(this.sF);
        if (this.sE != -1 || n != 0) {
            return;
        }
        this.sn = new dw(this.mContext);
        Context context = this.mContext;
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        Context context2 = this.mContext;
        context.bindService(intent, this, 1);
    }

    @Override
    public String getProductId() {
        return this.su;
    }

    @Override
    public Intent getPurchaseData() {
        return this.sF;
    }

    @Override
    public int getResultCode() {
        return this.sE;
    }

    @Override
    public boolean isVerified() {
        return this.sD;
    }

    @Override
    public void onServiceConnected(ComponentName object, IBinder iBinder) {
        gs.U("In-app billing service connected.");
        this.sn.r(iBinder);
        object = ed.E(ed.e(this.sF));
        if (object == null) {
            return;
        }
        if (this.sn.c(this.mContext.getPackageName(), (String)object) == 0) {
            ec.j(this.mContext).a(this.sy);
        }
        this.mContext.unbindService(this);
        this.sn.destroy();
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        gs.U("In-app billing service disconnected.");
        this.sn.destroy();
    }
}

