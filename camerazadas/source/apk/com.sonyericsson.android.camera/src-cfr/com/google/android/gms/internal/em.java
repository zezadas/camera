/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.InAppPurchase;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.eh;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.ez;

@ez
public final class em
extends eh.a {
    private final InAppPurchaseListener oC;

    public em(InAppPurchaseListener inAppPurchaseListener) {
        this.oC = inAppPurchaseListener;
    }

    @Override
    public void a(eg eg) {
        this.oC.onInAppPurchaseRequested(new ep(eg));
    }
}

