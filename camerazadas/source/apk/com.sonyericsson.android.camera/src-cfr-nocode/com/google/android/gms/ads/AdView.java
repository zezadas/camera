/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.bh;

/*
 * Exception performing whole class analysis.
 */
public final class AdView
extends ViewGroup {
    private final bh li;

    public AdView(Context var1);

    public AdView(Context var1, AttributeSet var2);

    public AdView(Context var1, AttributeSet var2, int var3);

    public void destroy();

    public AdListener getAdListener();

    public AdSize getAdSize();

    public String getAdUnitId();

    public InAppPurchaseListener getInAppPurchaseListener();

    public String getMediationAdapterClassName();

    public void loadAd(AdRequest var1);

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    protected void onMeasure(int var1, int var2);

    public void pause();

    public void resume();

    public void setAdListener(AdListener var1);

    public void setAdSize(AdSize var1);

    public void setAdUnitId(String var1);

    public void setInAppPurchaseListener(InAppPurchaseListener var1);

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener var1, String var2);
}

