/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.internal.bc;
import com.google.android.gms.internal.ez;

@ez
public final class at
extends bc.a {
    private final AdListener nR;

    public at(AdListener adListener) {
        this.nR = adListener;
    }

    @Override
    public void onAdClosed() {
        this.nR.onAdClosed();
    }

    @Override
    public void onAdFailedToLoad(int n) {
        this.nR.onAdFailedToLoad(n);
    }

    @Override
    public void onAdLeftApplication() {
        this.nR.onAdLeftApplication();
    }

    @Override
    public void onAdLoaded() {
        this.nR.onAdLoaded();
    }

    @Override
    public void onAdOpened() {
        this.nR.onAdOpened();
    }
}

