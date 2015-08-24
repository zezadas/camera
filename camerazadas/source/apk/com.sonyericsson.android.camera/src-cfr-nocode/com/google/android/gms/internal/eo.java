/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.ads.purchase.InAppPurchaseResult;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 */
@ez
public class eo
implements InAppPurchaseResult {
    private final ek sL;

    public eo(ek var1);

    @Override
    public void finishPurchase();

    @Override
    public String getProductId();

    @Override
    public Intent getPurchaseData();

    @Override
    public int getResultCode();

    @Override
    public boolean isVerified();
}

