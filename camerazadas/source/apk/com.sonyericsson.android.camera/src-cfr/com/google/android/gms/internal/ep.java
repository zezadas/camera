/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchase;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public class ep
implements InAppPurchase {
    private final eg sx;

    public ep(eg eg) {
        this.sx = eg;
    }

    @Override
    public String getProductId() {
        try {
            String string = this.sx.getProductId();
            return string;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not forward getProductId to InAppPurchase", var1_2);
            return null;
        }
    }

    @Override
    public void recordPlayBillingResolution(int n) {
        try {
            this.sx.recordPlayBillingResolution(n);
            return;
        }
        catch (RemoteException var2_2) {
            gs.d("Could not forward recordPlayBillingResolution to InAppPurchase", var2_2);
            return;
        }
    }

    @Override
    public void recordResolution(int n) {
        try {
            this.sx.recordResolution(n);
            return;
        }
        catch (RemoteException var2_2) {
            gs.d("Could not forward recordResolution to InAppPurchase", var2_2);
            return;
        }
    }
}

