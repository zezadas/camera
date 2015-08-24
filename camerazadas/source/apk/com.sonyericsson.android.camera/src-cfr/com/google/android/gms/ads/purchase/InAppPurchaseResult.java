/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.purchase;

import android.content.Intent;

public interface InAppPurchaseResult {
    public void finishPurchase();

    public String getProductId();

    public Intent getPurchaseData();

    public int getResultCode();

    public boolean isVerified();
}

