/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.mediation.customevent;

public interface CustomEventListener {
    public void onAdClicked();

    public void onAdClosed();

    public void onAdFailedToLoad(int var1);

    public void onAdLeftApplication();

    public void onAdOpened();
}

