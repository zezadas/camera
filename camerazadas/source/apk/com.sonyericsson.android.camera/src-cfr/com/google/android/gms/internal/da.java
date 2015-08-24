/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.db;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;

@ez
public final class da<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters>
implements MediationBannerListener,
MediationInterstitialListener {
    private final cv qF;

    public da(cv cv) {
        this.qF = cv;
    }

    @Override
    public void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        gs.S("Adapter called onClick.");
        if (!gr.ds()) {
            gs.W("onClick must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdClicked();
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdClicked.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
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
    public void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        gs.S("Adapter called onDismissScreen.");
        if (!gr.ds()) {
            gs.W("onDismissScreen must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdClosed();
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdClosed.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
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
    public void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        gs.S("Adapter called onDismissScreen.");
        if (!gr.ds()) {
            gs.W("onDismissScreen must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdClosed();
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdClosed.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
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
    public void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, final AdRequest.ErrorCode errorCode) {
        gs.S("Adapter called onFailedToReceiveAd with error. " + (Object)errorCode);
        if (!gr.ds()) {
            gs.W("onFailedToReceiveAd must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdFailedToLoad(db.a(errorCode));
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdFailedToLoad.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
        try {
            this.qF.onAdFailedToLoad(db.a(errorCode));
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdFailedToLoad.", var1_2);
            return;
        }
    }

    @Override
    public void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, final AdRequest.ErrorCode errorCode) {
        gs.S("Adapter called onFailedToReceiveAd with error " + (Object)errorCode + ".");
        if (!gr.ds()) {
            gs.W("onFailedToReceiveAd must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdFailedToLoad(db.a(errorCode));
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdFailedToLoad.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
        try {
            this.qF.onAdFailedToLoad(db.a(errorCode));
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdFailedToLoad.", var1_2);
            return;
        }
    }

    @Override
    public void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        gs.S("Adapter called onLeaveApplication.");
        if (!gr.ds()) {
            gs.W("onLeaveApplication must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdLeftApplication();
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdLeftApplication.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
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
    public void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        gs.S("Adapter called onLeaveApplication.");
        if (!gr.ds()) {
            gs.W("onLeaveApplication must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdLeftApplication();
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdLeftApplication.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
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
    public void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        gs.S("Adapter called onPresentScreen.");
        if (!gr.ds()) {
            gs.W("onPresentScreen must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdOpened();
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdOpened.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
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
    public void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        gs.S("Adapter called onPresentScreen.");
        if (!gr.ds()) {
            gs.W("onPresentScreen must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdOpened();
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdOpened.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
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
    public void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        gs.S("Adapter called onReceivedAd.");
        if (!gr.ds()) {
            gs.W("onReceivedAd must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdLoaded();
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdLoaded.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
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
    public void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        gs.S("Adapter called onReceivedAd.");
        if (!gr.ds()) {
            gs.W("onReceivedAd must be called on the main UI thread.");
            gr.wC.post(new Runnable(){

                @Override
                public void run() {
                    try {
                        da.this.qF.onAdLoaded();
                        return;
                    }
                    catch (RemoteException var1_1) {
                        gs.d("Could not call onAdLoaded.", var1_1);
                        return;
                    }
                }
            });
            return;
        }
        try {
            this.qF.onAdLoaded();
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call onAdLoaded.", var1_2);
            return;
        }
    }

}

