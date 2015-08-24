/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.doubleclick.c;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.bc;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.cs;
import com.google.android.gms.internal.eh;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.eq;
import com.google.android.gms.internal.eu;
import com.google.android.gms.internal.ex;
import com.google.android.gms.internal.gs;
import java.util.Map;

public class bi {
    private final Context mContext;
    private AdListener nR;
    private String oA;
    private InAppPurchaseListener oC;
    private PlayStorePurchaseListener oD;
    private PublisherInterstitialAd oF;
    private c oG;
    private AppEventListener oi;
    private String ok;
    private final cs ox = new cs();
    private final ax oy;
    private bd oz;

    public bi(Context context) {
        this(context, ax.bb(), null);
    }

    public bi(Context context, PublisherInterstitialAd publisherInterstitialAd) {
        this(context, ax.bb(), publisherInterstitialAd);
    }

    public bi(Context context, ax ax, PublisherInterstitialAd publisherInterstitialAd) {
        this.mContext = context;
        this.oy = ax;
        this.oF = publisherInterstitialAd;
    }

    private void v(String string) throws RemoteException {
        if (this.ok == null) {
            this.w(string);
        }
        this.oz = au.a(this.mContext, new ay(), this.ok, this.ox);
        if (this.nR != null) {
            this.oz.a(new at(this.nR));
        }
        if (this.oi != null) {
            this.oz.a(new ba(this.oi));
        }
        if (this.oC != null) {
            this.oz.a(new em(this.oC));
        }
        if (this.oD != null) {
            this.oz.a(new eq(this.oD), this.oA);
        }
        if (this.oG != null) {
            this.oz.a(new ex(this.oG, this.oF));
        }
    }

    private void w(String string) {
        if (this.oz == null) {
            throw new IllegalStateException("The ad unit ID must be set on InterstitialAd before " + string + " is called.");
        }
    }

    public void a(bg bg) {
        try {
            if (this.oz == null) {
                this.v("loadAd");
            }
            if (this.oz.a(this.oy.a(this.mContext, bg))) {
                this.ox.d(bg.be());
            }
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Failed to load ad.", var1_2);
            return;
        }
    }

    public AdListener getAdListener() {
        return this.nR;
    }

    public String getAdUnitId() {
        return this.ok;
    }

    public AppEventListener getAppEventListener() {
        return this.oi;
    }

    public InAppPurchaseListener getInAppPurchaseListener() {
        return this.oC;
    }

    public String getMediationAdapterClassName() {
        try {
            if (this.oz != null) {
                String string = this.oz.getMediationAdapterClassName();
                return string;
            }
        }
        catch (RemoteException var1_2) {
            gs.d("Failed to get the mediation adapter class name.", var1_2);
        }
        return null;
    }

    public boolean isLoaded() {
        block3 : {
            try {
                if (this.oz != null) break block3;
                return false;
            }
            catch (RemoteException var2_2) {
                gs.d("Failed to check if ad is ready.", var2_2);
                return false;
            }
        }
        boolean bl = this.oz.isReady();
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setAdListener(AdListener object) {
        try {
            this.nR = object;
            if (this.oz != null) {
                bd bd = this.oz;
                object = object != null ? new at((AdListener)object) : null;
                bd.a((bc)object);
            }
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Failed to set the AdListener.", var1_2);
            return;
        }
    }

    public void setAdUnitId(String string) {
        if (this.ok != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        this.ok = string;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setAppEventListener(AppEventListener object) {
        try {
            this.oi = object;
            if (this.oz != null) {
                bd bd = this.oz;
                object = object != null ? new ba((AppEventListener)object) : null;
                bd.a((bf)object);
            }
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Failed to set the AppEventListener.", var1_2);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setInAppPurchaseListener(InAppPurchaseListener object) {
        if (this.oD != null) {
            throw new IllegalStateException("Play store purchase parameter has already been set.");
        }
        try {
            this.oC = object;
            if (this.oz != null) {
                bd bd = this.oz;
                object = object != null ? new em((InAppPurchaseListener)object) : null;
                bd.a((eh)object);
            }
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Failed to set the InAppPurchaseListener.", var1_2);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setPlayStorePurchaseParams(PlayStorePurchaseListener object, String string) {
        try {
            this.oD = object;
            if (this.oz != null) {
                bd bd = this.oz;
                object = object != null ? new eq((PlayStorePurchaseListener)object) : null;
                bd.a((el)object, string);
            }
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Failed to set the play store purchase parameter.", var1_2);
            return;
        }
    }

    public void show() {
        try {
            this.w("show");
            this.oz.showInterstitial();
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Failed to show interstitial.", var1_1);
            return;
        }
    }
}

