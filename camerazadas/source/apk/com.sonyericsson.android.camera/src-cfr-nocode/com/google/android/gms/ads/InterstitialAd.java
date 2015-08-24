/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.bi;

/*
 * Exception performing whole class analysis.
 */
public final class InterstitialAd {
    private final bi lj;

    public InterstitialAd(Context var1);

    public AdListener getAdListener();

    public String getAdUnitId();

    public InAppPurchaseListener getInAppPurchaseListener();

    public String getMediationAdapterClassName();

    public boolean isLoaded();

    public void loadAd(AdRequest var1);

    public void setAdListener(AdListener var1);

    public void setAdUnitId(String var1);

    public void setInAppPurchaseListener(InAppPurchaseListener var1);

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener var1, String var2);

    public void show();
}

