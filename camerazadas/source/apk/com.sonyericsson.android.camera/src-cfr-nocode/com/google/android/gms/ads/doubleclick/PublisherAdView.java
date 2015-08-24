/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.internal.bh;

/*
 * Exception performing whole class analysis.
 */
public final class PublisherAdView
extends ViewGroup {
    private final bh li;

    public PublisherAdView(Context var1);

    public PublisherAdView(Context var1, AttributeSet var2);

    public PublisherAdView(Context var1, AttributeSet var2, int var3);

    public void destroy();

    public AdListener getAdListener();

    public AdSize getAdSize();

    public AdSize[] getAdSizes();

    public String getAdUnitId();

    public AppEventListener getAppEventListener();

    public String getMediationAdapterClassName();

    public void loadAd(PublisherAdRequest var1);

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    protected void onMeasure(int var1, int var2);

    public void pause();

    public void recordManualImpression();

    public void resume();

    public void setAdListener(AdListener var1);

    public /* varargs */ void setAdSizes(AdSize ... var1);

    public void setAdUnitId(String var1);

    public void setAppEventListener(AppEventListener var1);
}

