/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.bi;

public final class PublisherInterstitialAd {
    private final bi lj;

    public PublisherInterstitialAd(Context context) {
        this.lj = new bi(context, this);
    }

    public AdListener getAdListener() {
        return this.lj.getAdListener();
    }

    public String getAdUnitId() {
        return this.lj.getAdUnitId();
    }

    public AppEventListener getAppEventListener() {
        return this.lj.getAppEventListener();
    }

    public String getMediationAdapterClassName() {
        return this.lj.getMediationAdapterClassName();
    }

    public boolean isLoaded() {
        return this.lj.isLoaded();
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        this.lj.a(publisherAdRequest.V());
    }

    public void setAdListener(AdListener adListener) {
        this.lj.setAdListener(adListener);
    }

    public void setAdUnitId(String string) {
        this.lj.setAdUnitId(string);
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        this.lj.setAppEventListener(appEventListener);
    }

    public void show() {
        this.lj.show();
    }
}

