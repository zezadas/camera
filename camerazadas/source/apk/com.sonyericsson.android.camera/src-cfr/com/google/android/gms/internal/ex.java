/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.doubleclick.a;
import com.google.android.gms.ads.doubleclick.c;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.eu;
import com.google.android.gms.internal.ev;
import com.google.android.gms.internal.ez;

@ez
public final class ex
extends eu.a {
    private final PublisherInterstitialAd oF;
    private final c oG;

    public ex(c c, PublisherInterstitialAd publisherInterstitialAd) {
        this.oG = c;
        this.oF = publisherInterstitialAd;
    }

    @Override
    public void a(es es) {
        this.oG.a(this.oF, new ev(es));
    }

    @Override
    public boolean e(String string, String string2) {
        return this.oG.a(this.oF, string, string2);
    }
}

