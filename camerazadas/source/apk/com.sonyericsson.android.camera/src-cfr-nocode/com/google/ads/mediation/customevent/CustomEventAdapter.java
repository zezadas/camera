/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.mediation.customevent.CustomEventBanner;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import com.google.ads.mediation.customevent.CustomEventInterstitial;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import com.google.ads.mediation.customevent.CustomEventServerParameters;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class CustomEventAdapter
implements MediationBannerAdapter<CustomEventExtras, CustomEventServerParameters>,
MediationInterstitialAdapter<CustomEventExtras, CustomEventServerParameters> {
    private View n;
    private CustomEventBanner o;
    private CustomEventInterstitial p;

    public CustomEventAdapter();

    private static <T> T a(String var0);

    private void a(View var1);

    static /* synthetic */ void a(CustomEventAdapter var0, View var1);

    @Override
    public void destroy();

    @Override
    public Class<CustomEventExtras> getAdditionalParametersType();

    @Override
    public View getBannerView();

    @Override
    public Class<CustomEventServerParameters> getServerParametersType();

    @Override
    public void requestBannerAd(MediationBannerListener var1, Activity var2, CustomEventServerParameters var3, AdSize var4, MediationAdRequest var5, CustomEventExtras var6);

    @Override
    public void requestInterstitialAd(MediationInterstitialListener var1, Activity var2, CustomEventServerParameters var3, MediationAdRequest var4, CustomEventExtras var5);

    @Override
    public void showInterstitial();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class a
    implements CustomEventBannerListener {
        private final CustomEventAdapter q;
        private final MediationBannerListener r;

        public a(CustomEventAdapter var1, MediationBannerListener var2);

        @Override
        public void onClick();

        @Override
        public void onDismissScreen();

        @Override
        public void onFailedToReceiveAd();

        @Override
        public void onLeaveApplication();

        @Override
        public void onPresentScreen();

        @Override
        public void onReceivedAd(View var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class b
    implements CustomEventInterstitialListener {
        private final CustomEventAdapter q;
        private final MediationInterstitialListener s;
        final /* synthetic */ CustomEventAdapter t;

        public b(CustomEventAdapter var1, CustomEventAdapter var2, MediationInterstitialListener var3);

        @Override
        public void onDismissScreen();

        @Override
        public void onFailedToReceiveAd();

        @Override
        public void onLeaveApplication();

        @Override
        public void onPresentScreen();

        @Override
        public void onReceivedAd();
    }

}

