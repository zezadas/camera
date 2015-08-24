/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.bh;

public final class AdView
extends ViewGroup {
    private final bh li;

    public AdView(Context context) {
        super(context);
        this.li = new bh(this);
    }

    public AdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.li = new bh(this, attributeSet, false);
    }

    public AdView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.li = new bh(this, attributeSet, false);
    }

    public void destroy() {
        this.li.destroy();
    }

    public AdListener getAdListener() {
        return this.li.getAdListener();
    }

    public AdSize getAdSize() {
        return this.li.getAdSize();
    }

    public String getAdUnitId() {
        return this.li.getAdUnitId();
    }

    public InAppPurchaseListener getInAppPurchaseListener() {
        return this.li.getInAppPurchaseListener();
    }

    public String getMediationAdapterClassName() {
        return this.li.getMediationAdapterClassName();
    }

    public void loadAd(AdRequest adRequest) {
        this.li.a(adRequest.V());
    }

    @Override
    protected void onLayout(boolean bl, int n, int n2, int n3, int n4) {
        View view = this.getChildAt(0);
        if (view != null && view.getVisibility() != 8) {
            int n5 = view.getMeasuredWidth();
            int n6 = view.getMeasuredHeight();
            n = (n3 - n - n5) / 2;
            n2 = (n4 - n2 - n6) / 2;
            view.layout(n, n2, n5 + n, n6 + n2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onMeasure(int n, int n2) {
        int n3;
        int n4 = 0;
        Object object = this.getChildAt(0);
        AdSize adSize = this.getAdSize();
        if (object != null && object.getVisibility() != 8) {
            this.measureChild((View)object, n, n2);
            n3 = object.getMeasuredWidth();
            n4 = object.getMeasuredHeight();
        } else if (adSize != null) {
            object = this.getContext();
            n3 = adSize.getWidthInPixels((Context)object);
            n4 = adSize.getHeightInPixels((Context)object);
        } else {
            n3 = 0;
        }
        n3 = Math.max(n3, this.getSuggestedMinimumWidth());
        n4 = Math.max(n4, this.getSuggestedMinimumHeight());
        this.setMeasuredDimension(View.resolveSize(n3, n), View.resolveSize(n4, n2));
    }

    public void pause() {
        this.li.pause();
    }

    public void resume() {
        this.li.resume();
    }

    public void setAdListener(AdListener adListener) {
        this.li.setAdListener(adListener);
    }

    public void setAdSize(AdSize adSize) {
        this.li.setAdSizes(adSize);
    }

    public void setAdUnitId(String string) {
        this.li.setAdUnitId(string);
    }

    public void setInAppPurchaseListener(InAppPurchaseListener inAppPurchaseListener) {
        this.li.setInAppPurchaseListener(inAppPurchaseListener);
    }

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener playStorePurchaseListener, String string) {
        this.li.setPlayStorePurchaseParams(playStorePurchaseListener, string);
    }
}

