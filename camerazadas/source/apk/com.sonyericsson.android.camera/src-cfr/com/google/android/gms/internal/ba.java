/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.ez;

@ez
public final class ba
extends bf.a {
    private final AppEventListener oi;

    public ba(AppEventListener appEventListener) {
        this.oi = appEventListener;
    }

    @Override
    public void onAppEvent(String string, String string2) {
        this.oi.onAppEvent(string, string2);
    }
}

