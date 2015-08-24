/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 */
@ez
public final class cy
implements MediationBannerListener,
MediationInterstitialListener {
    private final cv qF;

    public cy(cv var1);

    @Override
    public void onAdClicked(MediationBannerAdapter var1);

    @Override
    public void onAdClicked(MediationInterstitialAdapter var1);

    @Override
    public void onAdClosed(MediationBannerAdapter var1);

    @Override
    public void onAdClosed(MediationInterstitialAdapter var1);

    @Override
    public void onAdFailedToLoad(MediationBannerAdapter var1, int var2);

    @Override
    public void onAdFailedToLoad(MediationInterstitialAdapter var1, int var2);

    @Override
    public void onAdLeftApplication(MediationBannerAdapter var1);

    @Override
    public void onAdLeftApplication(MediationInterstitialAdapter var1);

    @Override
    public void onAdLoaded(MediationBannerAdapter var1);

    @Override
    public void onAdLoaded(MediationInterstitialAdapter var1);

    @Override
    public void onAdOpened(MediationBannerAdapter var1);

    @Override
    public void onAdOpened(MediationInterstitialAdapter var1);
}

