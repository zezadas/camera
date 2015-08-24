/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 */
@ez
public final class da<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters>
implements MediationBannerListener,
MediationInterstitialListener {
    private final cv qF;

    public da(cv var1);

    static /* synthetic */ cv a(da var0);

    @Override
    public void onClick(MediationBannerAdapter<?, ?> var1);

    @Override
    public void onDismissScreen(MediationBannerAdapter<?, ?> var1);

    @Override
    public void onDismissScreen(MediationInterstitialAdapter<?, ?> var1);

    @Override
    public void onFailedToReceiveAd(MediationBannerAdapter<?, ?> var1, AdRequest.ErrorCode var2);

    @Override
    public void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> var1, AdRequest.ErrorCode var2);

    @Override
    public void onLeaveApplication(MediationBannerAdapter<?, ?> var1);

    @Override
    public void onLeaveApplication(MediationInterstitialAdapter<?, ?> var1);

    @Override
    public void onPresentScreen(MediationBannerAdapter<?, ?> var1);

    @Override
    public void onPresentScreen(MediationInterstitialAdapter<?, ?> var1);

    @Override
    public void onReceivedAd(MediationBannerAdapter<?, ?> var1);

    @Override
    public void onReceivedAd(MediationInterstitialAdapter<?, ?> var1);

}

