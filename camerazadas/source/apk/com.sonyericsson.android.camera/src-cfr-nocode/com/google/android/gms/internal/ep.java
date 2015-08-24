/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.InAppPurchase;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 */
@ez
public class ep
implements InAppPurchase {
    private final eg sx;

    public ep(eg var1);

    @Override
    public String getProductId();

    @Override
    public void recordPlayBillingResolution(int var1);

    @Override
    public void recordResolution(int var1);
}

