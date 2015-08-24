/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.bi;

public final class InterstitialAd {
    private final bi lj;

    public InterstitialAd(Context context) {
        this.lj = new bi(context);
    }

    public AdListener getAdListener() {
        return this.lj.getAdListener();
    }

    public String getAdUnitId() {
        return this.lj.getAdUnitId();
    }

    public InAppPurchaseListener getInAppPurchaseListener() {
        return this.lj.getInAppPurchaseListener();
    }

    public String getMediationAdapterClassName() {
        return this.lj.getMediationAdapterClassName();
    }

    public boolean isLoaded() {
        return this.lj.isLoaded();
    }

    public void loadAd(AdRequest adRequest) {
        this.lj.a(adRequest.V());
    }

    public void setAdListener(AdListener adListener) {
        this.lj.setAdListener(adListener);
    }

    public void setAdUnitId(String string) {
        this.lj.setAdUnitId(string);
    }

    public void setInAppPurchaseListener(InAppPurchaseListener inAppPurchaseListener) {
        this.lj.setInAppPurchaseListener(inAppPurchaseListener);
    }

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener playStorePurchaseListener, String string) {
        this.lj.setPlayStorePurchaseParams(playStorePurchaseListener, string);
    }

    public void show() {
        this.lj.show();
    }
}

