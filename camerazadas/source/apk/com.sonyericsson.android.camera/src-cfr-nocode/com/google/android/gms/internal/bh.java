/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.b;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.cs;

/*
 * Exception performing whole class analysis.
 */
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
    private final cs ox;
    private final ax oy;
    private bd oz;

    public bh(ViewGroup var1);

    public bh(ViewGroup var1, AttributeSet var2, boolean var3);

    bh(ViewGroup var1, AttributeSet var2, boolean var3, ax var4);

    bh(ViewGroup var1, AttributeSet var2, boolean var3, ax var4, bd var5);

    private void bh();

    private void bi() throws RemoteException;

    public void a(bg var1);

    public /* varargs */ void a(AdSize ... var1);

    public void destroy();

    public AdListener getAdListener();

    public AdSize getAdSize();

    public AdSize[] getAdSizes();

    public String getAdUnitId();

    public AppEventListener getAppEventListener();

    public InAppPurchaseListener getInAppPurchaseListener();

    public String getMediationAdapterClassName();

    public void pause();

    public void recordManualImpression();

    public void resume();

    public void setAdListener(AdListener var1);

    public /* varargs */ void setAdSizes(AdSize ... var1);

    public void setAdUnitId(String var1);

    public void setAppEventListener(AppEventListener var1);

    public void setInAppPurchaseListener(InAppPurchaseListener var1);

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener var1, String var2);
}

