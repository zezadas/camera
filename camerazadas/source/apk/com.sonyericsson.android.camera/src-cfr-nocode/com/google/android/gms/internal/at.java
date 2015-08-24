/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.internal.bc;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 */
@ez
public final class at
extends bc.a {
    private final AdListener nR;

    public at(AdListener var1);

    @Override
    public void onAdClosed();

    @Override
    public void onAdFailedToLoad(int var1);

    @Override
    public void onAdLeftApplication();

    @Override
    public void onAdLoaded();

    @Override
    public void onAdOpened();
}

