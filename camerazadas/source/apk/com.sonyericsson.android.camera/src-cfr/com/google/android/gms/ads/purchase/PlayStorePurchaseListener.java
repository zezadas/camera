/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.purchase;

import com.google.android.gms.ads.purchase.InAppPurchaseResult;

public interface PlayStorePurchaseListener {
    public boolean isValidPurchase(String var1);

    public void onInAppPurchaseFinished(InAppPurchaseResult var1);
}

