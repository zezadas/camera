/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.InAppPurchaseResult;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.eo;
import com.google.android.gms.internal.ez;

@ez
public final class eq
extends el.a {
    private final PlayStorePurchaseListener oD;

    public eq(PlayStorePurchaseListener playStorePurchaseListener) {
        this.oD = playStorePurchaseListener;
    }

    @Override
    public void a(ek ek) {
        this.oD.onInAppPurchaseFinished(new eo(ek));
    }

    @Override
    public boolean isValidPurchase(String string) {
        return this.oD.isValidPurchase(string);
    }
}

