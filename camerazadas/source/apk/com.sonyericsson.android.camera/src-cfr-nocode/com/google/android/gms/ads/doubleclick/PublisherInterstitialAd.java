/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.internal.bi;

/*
 * Exception performing whole class analysis.
 */
public final class PublisherInterstitialAd {
    private final bi lj;

    public PublisherInterstitialAd(Context var1);

    public AdListener getAdListener();

    public String getAdUnitId();

    public AppEventListener getAppEventListener();

    public String getMediationAdapterClassName();

    public boolean isLoaded();

    public void loadAd(PublisherAdRequest var1);

    public void setAdListener(AdListener var1);

    public void setAdUnitId(String var1);

    public void setAppEventListener(AppEventListener var1);

    public void show();
}

