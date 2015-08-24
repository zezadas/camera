/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;

public interface MediationInterstitialListener {
    public void onAdClicked(MediationInterstitialAdapter var1);

    public void onAdClosed(MediationInterstitialAdapter var1);

    public void onAdFailedToLoad(MediationInterstitialAdapter var1, int var2);

    public void onAdLeftApplication(MediationInterstitialAdapter var1);

    public void onAdLoaded(MediationInterstitialAdapter var1);

    public void onAdOpened(MediationInterstitialAdapter var1);
}

