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
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.cs;

/*
 * Exception performing whole class analysis.
 */
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
    private final cs ox;
    private final ax oy;
    private bd oz;

    public bi(Context var1);

    public bi(Context var1, PublisherInterstitialAd var2);

    public bi(Context var1, ax var2, PublisherInterstitialAd var3);

    private void v(String var1) throws RemoteException;

    private void w(String var1);

    public void a(bg var1);

    public AdListener getAdListener();

    public String getAdUnitId();

    public AppEventListener getAppEventListener();

    public InAppPurchaseListener getInAppPurchaseListener();

    public String getMediationAdapterClassName();

    public boolean isLoaded();

    public void setAdListener(AdListener var1);

    public void setAdUnitId(String var1);

    public void setAppEventListener(AppEventListener var1);

    public void setInAppPurchaseListener(InAppPurchaseListener var1);

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener var1, String var2);

    public void show();
}

