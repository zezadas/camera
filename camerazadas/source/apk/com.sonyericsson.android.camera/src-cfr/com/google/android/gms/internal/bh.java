/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.b;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.bb;
import com.google.android.gms.internal.bc;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.cs;
import com.google.android.gms.internal.eh;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.eq;
import com.google.android.gms.internal.et;
import com.google.android.gms.internal.ew;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import java.util.Map;

public final class bh {
    private AdListener nR;
    private String oA;
    private ViewGroup oB;
    private InAppPurchaseListener oC;
    private PlayStorePurchaseListener oD;
    private b oE;
    private AppEventListener oi;
    private AdSize[] oj;
    private String ok;
    private final cs ox = new cs();
    private final ax oy;
    private bd oz;

    public bh(ViewGroup viewGroup) {
        this(viewGroup, null, false, ax.bb());
    }

    public bh(ViewGroup viewGroup, AttributeSet attributeSet, boolean bl) {
        this(viewGroup, attributeSet, bl, ax.bb());
    }

    bh(ViewGroup viewGroup, AttributeSet attributeSet, boolean bl, ax ax) {
        this(viewGroup, attributeSet, bl, ax, null);
    }

    bh(ViewGroup viewGroup, AttributeSet object, boolean bl, ax object2, bd bd) {
        this.oB = viewGroup;
        this.oy = object2;
        if (object != null) {
            object2 = viewGroup.getContext();
            try {
                object = new bb((Context)object2, (AttributeSet)object);
                this.oj = object.f(bl);
                this.ok = object.getAdUnitId();
            }
            catch (IllegalArgumentException var2_3) {
                gr.a(viewGroup, new ay((Context)object2, AdSize.BANNER), var2_3.getMessage(), var2_3.getMessage());
                return;
            }
            if (viewGroup.isInEditMode()) {
                gr.a(viewGroup, new ay((Context)object2, this.oj[0]), "Ads by Google");
                return;
            }
        }
        this.oz = bd;
    }

    private void bh() {
        d d;
        block3 : {
            try {
                d = this.oz.X();
                if (d != null) break block3;
                return;
            }
            catch (RemoteException var1_2) {
                gs.d("Failed to get an ad frame.", var1_2);
                return;
            }
        }
        this.oB.addView((View)e.f(d));
    }

    private void bi() throws RemoteException {
        if ((this.oj == null || this.ok == null) && this.oz == null) {
            throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
        }
        Context context = this.oB.getContext();
        this.oz = au.a(context, new ay(context, this.oj), this.ok, this.ox);
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
        if (this.oE != null) {
            this.oz.a(new ew(this.oE, (PublisherAdView)this.oB));
        }
        this.bh();
    }

    public void a(bg bg) {
        try {
            if (this.oz == null) {
                this.bi();
            }
            if (this.oz.a(this.oy.a(this.oB.getContext(), bg))) {
                this.ox.d(bg.be());
            }
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Failed to load ad.", var1_2);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public /* varargs */ void a(AdSize ... arradSize) {
        this.oj = arradSize;
        try {
            if (this.oz != null) {
                this.oz.a(new ay(this.oB.getContext(), this.oj));
            }
        }
        catch (RemoteException var1_2) {
            gs.d("Failed to set the ad size.", var1_2);
        }
        this.oB.requestLayout();
    }

    public void destroy() {
        try {
            if (this.oz != null) {
                this.oz.destroy();
            }
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Failed to destroy AdView.", var1_1);
            return;
        }
    }

    public AdListener getAdListener() {
        return this.nR;
    }

    public AdSize getAdSize() {
        try {
            if (this.oz != null) {
                AdSize adSize = this.oz.Y().bc();
                return adSize;
            }
        }
        catch (RemoteException var1_2) {
            gs.d("Failed to get the current AdSize.", var1_2);
        }
        if (this.oj != null) {
            return this.oj[0];
        }
        return null;
    }

    public AdSize[] getAdSizes() {
        return this.oj;
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

    public void pause() {
        try {
            if (this.oz != null) {
                this.oz.pause();
            }
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Failed to call pause.", var1_1);
            return;
        }
    }

    public void recordManualImpression() {
        try {
            if (this.oz != null) {
                this.oz.aj();
            }
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Failed to record impression.", var1_1);
            return;
        }
    }

    public void resume() {
        try {
            if (this.oz != null) {
                this.oz.resume();
            }
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Failed to call resume.", var1_1);
            return;
        }
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

    public /* varargs */ void setAdSizes(AdSize ... arradSize) {
        if (this.oj != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        this.a(arradSize);
    }

    public void setAdUnitId(String string) {
        if (this.ok != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
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
        if (this.oC != null) {
            throw new IllegalStateException("InAppPurchaseListener has already been set.");
        }
        try {
            this.oD = object;
            this.oA = string;
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
}

