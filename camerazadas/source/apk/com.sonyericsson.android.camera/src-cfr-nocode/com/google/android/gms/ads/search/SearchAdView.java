/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.internal.bh;

/*
 * Exception performing whole class analysis.
 */
public final class SearchAdView
extends ViewGroup {
    private final bh li;

    public SearchAdView(Context var1);

    public SearchAdView(Context var1, AttributeSet var2);

    public SearchAdView(Context var1, AttributeSet var2, int var3);

    public void destroy();

    public AdListener getAdListener();

    public AdSize getAdSize();

    public String getAdUnitId();

    public void loadAd(SearchAdRequest var1);

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    protected void onMeasure(int var1, int var2);

    public void pause();

    public void resume();

    public void setAdListener(AdListener var1);

    public void setAdSize(AdSize var1);

    public void setAdUnitId(String var1);
}

