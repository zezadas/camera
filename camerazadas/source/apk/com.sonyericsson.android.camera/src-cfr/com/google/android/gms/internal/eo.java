/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchaseResult;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public class eo
implements InAppPurchaseResult {
    private final ek sL;

    public eo(ek ek) {
        this.sL = ek;
    }

    @Override
    public void finishPurchase() {
        try {
            this.sL.finishPurchase();
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not forward finishPurchase to InAppPurchaseResult", var1_1);
            return;
        }
    }

    @Override
    public String getProductId() {
        try {
            String string = this.sL.getProductId();
            return string;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not forward getProductId to InAppPurchaseResult", var1_2);
            return null;
        }
    }

    @Override
    public Intent getPurchaseData() {
        try {
            Intent intent = this.sL.getPurchaseData();
            return intent;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not forward getPurchaseData to InAppPurchaseResult", var1_2);
            return null;
        }
    }

    @Override
    public int getResultCode() {
        try {
            int n = this.sL.getResultCode();
            return n;
        }
        catch (RemoteException var2_2) {
            gs.d("Could not forward getPurchaseData to InAppPurchaseResult", var2_2);
            return 0;
        }
    }

    @Override
    public boolean isVerified() {
        try {
            boolean bl = this.sL.isVerified();
            return bl;
        }
        catch (RemoteException var2_2) {
            gs.d("Could not forward isVerified to InAppPurchaseResult", var2_2);
            return false;
        }
    }
}

