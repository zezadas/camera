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

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class CustomEventAdapter
implements MediationBannerAdapter,
MediationInterstitialAdapter {
    private View n;
    private CustomEventBanner xf;
    private CustomEventInterstitial xg;

    public CustomEventAdapter();

    private static <T> T a(String var0);

    private void a(View var1);

    static /* synthetic */ void a(CustomEventAdapter var0, View var1);

    @Override
    public View getBannerView();

    @Override
    public void onDestroy();

    @Override
    public void onPause();

    @Override
    public void onResume();

    @Override
    public void requestBannerAd(Context var1, MediationBannerListener var2, Bundle var3, AdSize var4, MediationAdRequest var5, Bundle var6);

    @Override
    public void requestInterstitialAd(Context var1, MediationInterstitialListener var2, Bundle var3, MediationAdRequest var4, Bundle var5);

    @Override
    public void showInterstitial();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class a
    implements CustomEventBannerListener {
        private final MediationBannerListener l;
        private final CustomEventAdapter xh;

        public a(CustomEventAdapter var1, MediationBannerListener var2);

        @Override
        public void onAdClicked();

        @Override
        public void onAdClosed();

        @Override
        public void onAdFailedToLoad(int var1);

        @Override
        public void onAdLeftApplication();

        @Override
        public void onAdLoaded(View var1);

        @Override
        public void onAdOpened();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class b
    implements CustomEventInterstitialListener {
        private final MediationInterstitialListener m;
        private final CustomEventAdapter xh;
        final /* synthetic */ CustomEventAdapter xi;

        public b(CustomEventAdapter var1, CustomEventAdapter var2, MediationInterstitialListener var3);

        @Override
        public void onAdClicked();

        @Override
        public void onAdClosed();

        @Override
        public void onAdFailedToLoad(int var1);

        @Override
        public void onAdLeftApplication();

        @Override
        public void onAdLoaded();

        @Override
        public void onAdOpened();
    }

}

