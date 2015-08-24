/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener;

public interface CustomEventBanner
extends CustomEvent {
    public void requestBannerAd(Context var1, CustomEventBannerListener var2, String var3, AdSize var4, MediationAdRequest var5, Bundle var6);
}

