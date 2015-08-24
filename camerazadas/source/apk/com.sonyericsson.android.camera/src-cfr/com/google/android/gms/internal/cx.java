/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

@ez
public final class cx
extends cu.a {
    private final MediationAdapter qE;

    public cx(MediationAdapter mediationAdapter) {
        this.qE = mediationAdapter;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private Bundle a(String object, int n, String string) throws RemoteException {
        gs.W("Server parameters: " + (String)object);
        try {
            Bundle bundle = new Bundle();
            if (object != null) {
                object = new JSONObject((String)object);
                bundle = new Bundle();
                Iterator<String> iterator = object.keys();
                while (iterator.hasNext()) {
                    String string2 = iterator.next();
                    bundle.putString(string2, object.getString(string2));
                }
            }
            if (this.qE instanceof AdMobAdapter) {
                bundle.putString("adJson", string);
                bundle.putInt("tagForChildDirectedTreatment", n);
            }
            return bundle;
        }
        catch (Throwable var1_2) {
            gs.d("Could not get Server Parameters Bundle.", var1_2);
            throw new RemoteException();
        }
    }

    @Override
    public void a(d d, av av, String string, cv cv) throws RemoteException {
        this.a(d, av, string, null, cv);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void a(d d, av av, String string, String string2, cv cv) throws RemoteException {
        if (!(this.qE instanceof MediationInterstitialAdapter)) {
            gs.W("MediationAdapter is not a MediationInterstitialAdapter: " + this.qE.getClass().getCanonicalName());
            throw new RemoteException();
        }
        gs.S("Requesting interstitial ad from adapter.");
        try {
            void var6_11;
            void var6_9;
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter)this.qE;
            if (av.nV != null) {
                HashSet<String> hashSet = new HashSet<String>(av.nV);
            } else {
                Object var6_12 = null;
            }
            cw cw = new cw(new Date(av.nT), av.nU, (Set<String>)var6_9, av.ob, av.nW, av.nX);
            if (av.od != null) {
                Bundle bundle = av.od.getBundle(mediationInterstitialAdapter.getClass().getName());
            } else {
                Object var6_13 = null;
            }
            mediationInterstitialAdapter.requestInterstitialAd((Context)e.f(d), new cy(cv), this.a(string, av.nX, string2), cw, (Bundle)var6_11);
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

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void a(d d, ay ay, av av, String string, String string2, cv cv) throws RemoteException {
        Object var8_8 = null;
        if (!(this.qE instanceof MediationBannerAdapter)) {
            gs.W("MediationAdapter is not a MediationBannerAdapter: " + this.qE.getClass().getCanonicalName());
            throw new RemoteException();
        }
        gs.S("Requesting banner ad from adapter.");
        try {
            void var7_11;
            void var7_14;
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter)this.qE;
            if (av.nV != null) {
                HashSet<String> hashSet = new HashSet<String>(av.nV);
            } else {
                Object var7_15 = null;
            }
            cw cw = new cw(new Date(av.nT), av.nU, (Set<String>)var7_11, av.ob, av.nW, av.nX);
            Object var7_12 = var8_8;
            if (av.od != null) {
                Bundle bundle = av.od.getBundle(mediationBannerAdapter.getClass().getName());
            }
            mediationBannerAdapter.requestBannerAd((Context)e.f(d), new cy(cv), this.a(string, av.nX, string2), a.a(ay.width, ay.height, ay.of), cw, (Bundle)var7_14);
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
            this.qE.onDestroy();
            return;
        }
        catch (Throwable var1_1) {
            gs.d("Could not destroy adapter.", var1_1);
            throw new RemoteException();
        }
    }

    @Override
    public d getView() throws RemoteException {
        if (!(this.qE instanceof MediationBannerAdapter)) {
            gs.W("MediationAdapter is not a MediationBannerAdapter: " + this.qE.getClass().getCanonicalName());
            throw new RemoteException();
        }
        try {
            d d = e.k(((MediationBannerAdapter)this.qE).getBannerView());
            return d;
        }
        catch (Throwable var1_2) {
            gs.d("Could not get banner view from adapter.", var1_2);
            throw new RemoteException();
        }
    }

    @Override
    public void pause() throws RemoteException {
        try {
            this.qE.onPause();
            return;
        }
        catch (Throwable var1_1) {
            gs.d("Could not pause adapter.", var1_1);
            throw new RemoteException();
        }
    }

    @Override
    public void resume() throws RemoteException {
        try {
            this.qE.onResume();
            return;
        }
        catch (Throwable var1_1) {
            gs.d("Could not resume adapter.", var1_1);
            throw new RemoteException();
        }
    }

    @Override
    public void showInterstitial() throws RemoteException {
        if (!(this.qE instanceof MediationInterstitialAdapter)) {
            gs.W("MediationAdapter is not a MediationInterstitialAdapter: " + this.qE.getClass().getCanonicalName());
            throw new RemoteException();
        }
        gs.S("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter)this.qE).showInterstitial();
            return;
        }
        catch (Throwable var1_1) {
            gs.d("Could not show interstitial from adapter.", var1_1);
            throw new RemoteException();
        }
    }
}

