/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import android.view.View;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.da;
import com.google.android.gms.internal.db;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

@ez
public final class cz<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters>
extends cu.a {
    private final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> qG;
    private final NETWORK_EXTRAS qH;

    public cz(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter, NETWORK_EXTRAS NETWORK_EXTRAS) {
        this.qG = mediationAdapter;
        this.qH = NETWORK_EXTRAS;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private SERVER_PARAMETERS b(String var1_1, int var2_3, String var3_4) throws RemoteException {
        if (var1_1 == null) ** GOTO lbl12
        try {
            var4_5 = new JSONObject((String)var1_1);
            var3_4 = new HashMap<K, V>(var4_5.length());
            var5_6 = var4_5.keys();
            do {
                var1_1 = var3_4;
                if (var5_6.hasNext()) {
                    var1_1 = var5_6.next();
                    var3_4.put(var1_1, var4_5.getString((String)var1_1));
                    continue;
                } else {
                    ** GOTO lbl17
                }
                break;
            } while (true);
lbl12: // 1 sources:
            var1_1 = new HashMap<String, String>(0);
        }
        catch (Throwable var1_2) {
            gs.d("Could not get MediationServerParameters.", var1_2);
            throw new RemoteException();
        }
lbl17: // 3 sources:
        var4_5 = this.qG.getServerParametersType();
        var3_4 = null;
        if (var4_5 == null) return (SERVER_PARAMETERS)var3_4;
        var3_4 = (MediationServerParameters)var4_5.newInstance();
        var3_4.load((Map<String, String>)var1_1);
        return (SERVER_PARAMETERS)var3_4;
    }

    @Override
    public void a(d d, av av, String string, cv cv) throws RemoteException {
        this.a(d, av, string, null, cv);
    }

    @Override
    public void a(d d, av av, String string, String string2, cv cv) throws RemoteException {
        if (!(this.qG instanceof MediationInterstitialAdapter)) {
            gs.W("MediationAdapter is not a MediationInterstitialAdapter: " + this.qG.getClass().getCanonicalName());
            throw new RemoteException();
        }
        gs.S("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter)this.qG).requestInterstitialAd(new da(cv), (Activity)e.f(d), this.b(string, av.nX, string2), db.d(av), this.qH);
            return;
        }
        catch (Throwable var1_2) {
            gs.d("Could not request interstitial ad from adapter.", var1_2);
            throw new RemoteException();
        }
    }

    @Override
    public void a(d d, ay ay, av av, String string, cv cv) throws RemoteException {
        this.a(d, ay, av, string, null, cv);
    }

    @Override
    public void a(d d, ay ay, av av, String string, String string2, cv cv) throws RemoteException {
        if (!(this.qG instanceof MediationBannerAdapter)) {
            gs.W("MediationAdapter is not a MediationBannerAdapter: " + this.qG.getClass().getCanonicalName());
            throw new RemoteException();
        }
        gs.S("Requesting banner ad from adapter.");
        try {
            ((MediationBannerAdapter)this.qG).requestBannerAd(new da(cv), (Activity)e.f(d), this.b(string, av.nX, string2), db.b(ay), db.d(av), this.qH);
            return;
        }
        catch (Throwable var1_2) {
            gs.d("Could not request banner ad from adapter.", var1_2);
            throw new RemoteException();
        }
    }

    @Override
    public void destroy() throws RemoteException {
        try {
            this.qG.destroy();
            return;
        }
        catch (Throwable var1_1) {
            gs.d("Could not destroy adapter.", var1_1);
            throw new RemoteException();
        }
    }

    @Override
    public d getView() throws RemoteException {
        if (!(this.qG instanceof MediationBannerAdapter)) {
            gs.W("MediationAdapter is not a MediationBannerAdapter: " + this.qG.getClass().getCanonicalName());
            throw new RemoteException();
        }
        try {
            d d = e.k(((MediationBannerAdapter)this.qG).getBannerView());
            return d;
        }
        catch (Throwable var1_2) {
            gs.d("Could not get banner view from adapter.", var1_2);
            throw new RemoteException();
        }
    }

    @Override
    public void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public void resume() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public void showInterstitial() throws RemoteException {
        if (!(this.qG instanceof MediationInterstitialAdapter)) {
            gs.W("MediationAdapter is not a MediationInterstitialAdapter: " + this.qG.getClass().getCanonicalName());
            throw new RemoteException();
        }
        gs.S("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter)this.qG).showInterstitial();
            return;
        }
        catch (Throwable var1_1) {
            gs.d("Could not show interstitial from adapter.", var1_1);
            throw new RemoteException();
        }
    }
}

