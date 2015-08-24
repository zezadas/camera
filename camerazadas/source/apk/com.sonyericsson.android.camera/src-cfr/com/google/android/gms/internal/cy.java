/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public final class cy
implements MediationBannerListener,
MediationInterstitialListener {
    private final cv qF;

    public cy(cv cv) {
        this.qF = cv;
    }

    @Override
    public void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        o.aT("onAdClicked must be called on the main UI thread.");
        gs.S("Adapter called onAdClicked.");
        try {
            this.qF.onAdClicked();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdClicked.", var1_2);
            return;
        }
    }

    @Override
    public void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        o.aT("onAdClicked must be called on the main UI thread.");
        gs.S("Adapter called onAdClicked.");
        try {
            this.qF.onAdClicked();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdClicked.", var1_2);
            return;
        }
    }

    @Override
    public void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        o.aT("onAdClosed must be called on the main UI thread.");
        gs.S("Adapter called onAdClosed.");
        try {
            this.qF.onAdClosed();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdClosed.", var1_2);
            return;
        }
    }

    @Override
    public void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        o.aT("onAdClosed must be called on the main UI thread.");
        gs.S("Adapter called onAdClosed.");
        try {
            this.qF.onAdClosed();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdClosed.", var1_2);
            return;
        }
    }

    @Override
    public void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int n) {
        o.aT("onAdFailedToLoad must be called on the main UI thread.");
        gs.S("Adapter called onAdFailedToLoad with error. " + n);
        try {
            this.qF.onAdFailedToLoad(n);
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdFailedToLoad.", var1_2);
            return;
        }
    }

    @Override
    public void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int n) {
        o.aT("onAdFailedToLoad must be called on the main UI thread.");
        gs.S("Adapter called onAdFailedToLoad with error " + n + ".");
        try {
            this.qF.onAdFailedToLoad(n);
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdFailedToLoad.", var1_2);
            return;
        }
    }

    @Override
    public void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        o.aT("onAdLeftApplication must be called on the main UI thread.");
        gs.S("Adapter called onAdLeftApplication.");
        try {
            this.qF.onAdLeftApplication();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdLeftApplication.", var1_2);
            return;
        }
    }

    @Override
    public void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        o.aT("onAdLeftApplication must be called on the main UI thread.");
        gs.S("Adapter called onAdLeftApplication.");
        try {
            this.qF.onAdLeftApplication();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdLeftApplication.", var1_2);
            return;
        }
    }

    @Override
    public void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        o.aT("onAdLoaded must be called on the main UI thread.");
        gs.S("Adapter called onAdLoaded.");
        try {
            this.qF.onAdLoaded();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdLoaded.", var1_2);
            return;
        }
    }

    @Override
    public void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        o.aT("onAdLoaded must be called on the main UI thread.");
        gs.S("Adapter called onAdLoaded.");
        try {
            this.qF.onAdLoaded();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdLoaded.", var1_2);
            return;
        }
    }

    @Override
    public void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        o.aT("onAdOpened must be called on the main UI thread.");
        gs.S("Adapter called onAdOpened.");
        try {
            this.qF.onAdOpened();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdOpened.", var1_2);
            return;
        }
    }

    @Override
    public void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        o.aT("onAdOpened must be called on the main UI thread.");
        gs.S("Adapter called onAdOpened.");
        try {
            this.qF.onAdOpened();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdOpened.", var1_2);
            return;
        }
    }
}

