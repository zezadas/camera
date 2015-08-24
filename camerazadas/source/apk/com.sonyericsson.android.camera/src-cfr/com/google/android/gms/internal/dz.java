/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.dv;
import com.google.android.gms.internal.dw;
import com.google.android.gms.internal.ea;
import com.google.android.gms.internal.eb;
import com.google.android.gms.internal.ec;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ei;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public class dz
extends ei.a
implements ServiceConnection {
    private final Activity nr;
    private el sm;
    private dw sn;
    private final ec so;
    private ee sq;
    private Context sw;
    private eg sx;
    private ea sy;
    private String sz = null;

    public dz(Activity activity) {
        this.nr = activity;
        this.so = ec.j(this.nr.getApplicationContext());
    }

    public static void a(Context context, boolean bl, dv dv) {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.purchase.InAppPurchaseActivity");
        intent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", bl);
        dv.a(intent, dv);
        context.startActivity(intent);
    }

    private void a(String string, boolean bl, int n, Intent intent) {
        try {
            this.sm.a(new eb(this.sw, string, bl, n, intent, this.sy));
            return;
        }
        catch (RemoteException var1_2) {
            gs.W("Fail to invoke PlayStorePurchaseListener.");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onActivityResult(int n, int n2, Intent intent) {
        if (n == 1001) {
            block10 : {
                block9 : {
                    try {
                        n = ed.d(intent);
                        if (n2 != -1 || n != 0) break block9;
                        if (this.sq.a(this.sz, n2, intent)) {
                            this.a(this.sx.getProductId(), true, n2, intent);
                            break block10;
                        }
                        this.a(this.sx.getProductId(), false, n2, intent);
                        break block10;
                    }
                    catch (RemoteException var3_4) {
                        gs.W("Fail to process purchase result.");
                        return;
                    }
                }
                this.so.a(this.sy);
                this.a(this.sx.getProductId(), false, n2, intent);
            }
            this.sx.recordPlayBillingResolution(n);
        }
        return;
        finally {
            this.sz = null;
            this.nr.finish();
        }
    }

    @Override
    public void onCreate() {
        Parcelable parcelable = dv.c(this.nr.getIntent());
        this.sm = parcelable.lM;
        this.sq = parcelable.lT;
        this.sx = parcelable.si;
        this.sn = new dw(this.nr.getApplicationContext());
        this.sw = parcelable.sj;
        parcelable = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        parcelable.setPackage("com.android.vending");
        this.nr.bindService((Intent)parcelable, this, 1);
    }

    @Override
    public void onDestroy() {
        this.nr.unbindService(this);
        this.sn.destroy();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    public void onServiceConnected(ComponentName var1_1, IBinder var2_5) {
        this.sn.r((IBinder)var2_6);
        try {
            this.sz = this.sq.ct();
            var1_2 = this.sn.a(this.nr.getPackageName(), this.sx.getProductId(), this.sz);
            var2_6 = (PendingIntent)var1_2.getParcelable("BUY_INTENT");
            if (var2_6 == null) {
                var3_7 = ed.b(var1_2);
                this.sx.recordPlayBillingResolution(var3_7);
                this.a(this.sx.getProductId(), false, var3_7, null);
                this.nr.finish();
                return;
            }
            this.sy = new ea(this.sx.getProductId(), this.sz);
            this.so.b(this.sy);
            this.nr.startIntentSenderForResult(var2_6.getIntentSender(), 1001, new Intent(), 0, 0, 0);
            return;
        }
        catch (RemoteException var1_3) {}
        ** GOTO lbl-1000
        catch (IntentSender.SendIntentException var1_5) {}
lbl-1000: // 2 sources:
        {
            gs.d("Error when connecting in-app billing service", (Throwable)var1_4);
            this.nr.finish();
            return;
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        gs.U("In-app billing service disconnected.");
        this.sn.destroy();
    }
}

