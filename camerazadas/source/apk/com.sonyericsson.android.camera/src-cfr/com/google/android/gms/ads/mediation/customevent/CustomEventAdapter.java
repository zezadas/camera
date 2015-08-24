/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventBanner;
import com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventInterstitial;
import com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener;
import com.google.android.gms.internal.gs;

public final class CustomEventAdapter
implements MediationBannerAdapter,
MediationInterstitialAdapter {
    private View n;
    private CustomEventBanner xf;
    private CustomEventInterstitial xg;

    private static <T> T a(String string) {
        Object obj;
        try {
            obj = Class.forName(string).newInstance();
        }
        catch (Throwable var1_2) {
            gs.W("Could not instantiate custom event adapter: " + string + ". " + var1_2.getMessage());
            return null;
        }
        return (T)obj;
    }

    private void a(View view) {
        this.n = view;
    }

    @Override
    public View getBannerView() {
        return this.n;
    }

    @Override
    public void onDestroy() {
        if (this.xf != null) {
            this.xf.onDestroy();
        }
        if (this.xg != null) {
            this.xg.onDestroy();
        }
    }

    @Override
    public void onPause() {
        if (this.xf != null) {
            this.xf.onPause();
        }
        if (this.xg != null) {
            this.xg.onPause();
        }
    }

    @Override
    public void onResume() {
        if (this.xf != null) {
            this.xf.onResume();
        }
        if (this.xg != null) {
            this.xg.onResume();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.xf = (CustomEventBanner)CustomEventAdapter.a(bundle.getString("class_name"));
        if (this.xf == null) {
            mediationBannerListener.onAdFailedToLoad(this, 0);
            return;
        }
        bundle2 = bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name"));
        this.xf.requestBannerAd(context, new a(this, mediationBannerListener), bundle.getString("parameter"), adSize, mediationAdRequest, bundle2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.xg = (CustomEventInterstitial)CustomEventAdapter.a(bundle.getString("class_name"));
        if (this.xg == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, 0);
            return;
        }
        bundle2 = bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name"));
        this.xg.requestInterstitialAd(context, new b(this, mediationInterstitialListener), bundle.getString("parameter"), mediationAdRequest, bundle2);
    }

    @Override
    public void showInterstitial() {
        this.xg.showInterstitial();
    }

    private static final class a
    implements CustomEventBannerListener {
        private final MediationBannerListener l;
        private final CustomEventAdapter xh;

        public a(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.xh = customEventAdapter;
            this.l = mediationBannerListener;
        }

        @Override
        public void onAdClicked() {
            gs.S("Custom event adapter called onAdClicked.");
            this.l.onAdClicked(this.xh);
        }

        @Override
        public void onAdClosed() {
            gs.S("Custom event adapter called onAdClosed.");
            this.l.onAdClosed(this.xh);
        }

        @Override
        public void onAdFailedToLoad(int n) {
            gs.S("Custom event adapter called onAdFailedToLoad.");
            this.l.onAdFailedToLoad(this.xh, n);
        }

        @Override
        public void onAdLeftApplication() {
            gs.S("Custom event adapter called onAdLeftApplication.");
            this.l.onAdLeftApplication(this.xh);
        }

        @Override
        public void onAdLoaded(View view) {
            gs.S("Custom event adapter called onAdLoaded.");
            this.xh.a(view);
            this.l.onAdLoaded(this.xh);
        }

        @Override
        public void onAdOpened() {
            gs.S("Custom event adapter called onAdOpened.");
            this.l.onAdOpened(this.xh);
        }
    }

    private class b
    implements CustomEventInterstitialListener {
        private final MediationInterstitialListener m;
        private final CustomEventAdapter xh;

        public b(CustomEventAdapter customEventAdapter2, MediationInterstitialListener mediationInterstitialListener) {
            this.xh = customEventAdapter2;
            this.m = mediationInterstitialListener;
        }

        @Override
        public void onAdClicked() {
            gs.S("Custom event adapter called onAdClicked.");
            this.m.onAdClicked(this.xh);
        }

        @Override
        public void onAdClosed() {
            gs.S("Custom event adapter called onAdClosed.");
            this.m.onAdClosed(this.xh);
        }

        @Override
        public void onAdFailedToLoad(int n) {
            gs.S("Custom event adapter called onFailedToReceiveAd.");
            this.m.onAdFailedToLoad(this.xh, n);
        }

        @Override
        public void onAdLeftApplication() {
            gs.S("Custom event adapter called onAdLeftApplication.");
            this.m.onAdLeftApplication(this.xh);
        }

        @Override
        public void onAdLoaded() {
            gs.S("Custom event adapter called onReceivedAd.");
            this.m.onAdLoaded(CustomEventAdapter.this);
        }

        @Override
        public void onAdOpened() {
            gs.S("Custom event adapter called onAdOpened.");
            this.m.onAdOpened(this.xh);
        }
    }

}

