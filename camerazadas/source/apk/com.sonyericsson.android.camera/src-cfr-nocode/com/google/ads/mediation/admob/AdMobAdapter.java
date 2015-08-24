/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads.mediation.admob;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class AdMobAdapter
implements MediationBannerAdapter,
MediationInterstitialAdapter {
    private AdView i;
    private InterstitialAd j;

    public AdMobAdapter();

    static AdRequest a(Context var0, MediationAdRequest var1, Bundle var2, Bundle var3);

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
    extends AdListener {
        private final AdMobAdapter k;
        private final MediationBannerListener l;

        public a(AdMobAdapter var1, MediationBannerListener var2);

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

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class b
    extends AdListener {
        private final AdMobAdapter k;
        private final MediationInterstitialListener m;

        public b(AdMobAdapter var1, MediationInterstitialListener var2);

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

