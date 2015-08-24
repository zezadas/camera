/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads.mediation.customevent;

import android.view.View;
import com.google.ads.mediation.customevent.CustomEventListener;

@Deprecated
public interface CustomEventBannerListener
extends CustomEventListener {
    public void onClick();

    public void onReceivedAd(View var1);
}

