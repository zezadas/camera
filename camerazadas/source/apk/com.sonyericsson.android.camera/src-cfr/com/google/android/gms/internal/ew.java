/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.a;
import com.google.android.gms.ads.doubleclick.b;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.et;
import com.google.android.gms.internal.ev;
import com.google.android.gms.internal.ez;

@ez
public final class ew
extends et.a {
    private final b oE;
    private final PublisherAdView sQ;

    public ew(b b, PublisherAdView publisherAdView) {
        this.oE = b;
        this.sQ = publisherAdView;
    }

    @Override
    public void a(es es) {
        this.oE.a(this.sQ, new ev(es));
    }

    @Override
    public boolean e(String string, String string2) {
        return this.oE.a(this.sQ, string, string2);
    }
}

