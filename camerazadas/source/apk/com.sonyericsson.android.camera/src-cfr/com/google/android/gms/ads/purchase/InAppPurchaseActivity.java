/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.ei;
import com.google.android.gms.internal.en;
import com.google.android.gms.internal.gs;

public final class InAppPurchaseActivity
extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.purchase.InAppPurchaseActivity";
    public static final String SIMPLE_CLASS_NAME = "InAppPurchaseActivity";
    private ei xk;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    protected void onActivityResult(int n, int n2, Intent intent) {
        try {
            if (this.xk != null) {
                this.xk.onActivityResult(n, n2, intent);
            }
        }
        catch (RemoteException var4_4) {
            gs.d("Could not forward onActivityResult to in-app purchase manager:", var4_4);
        }
        super.onActivityResult(n, n2, intent);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.xk = en.e(this);
        if (this.xk == null) {
            gs.W("Could not create in-app purchase manager.");
            this.finish();
            return;
        }
        try {
            this.xk.onCreate();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not forward onCreate to in-app purchase manager:", var1_2);
            this.finish();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    protected void onDestroy() {
        try {
            if (this.xk != null) {
                this.xk.onDestroy();
            }
        }
        catch (RemoteException var1_1) {
            gs.d("Could not forward onDestroy to in-app purchase manager:", var1_1);
        }
        super.onDestroy();
    }
}

