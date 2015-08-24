/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.mediation.admob;

import android.os.Bundle;
import com.google.ads.mediation.NetworkExtras;

@Deprecated
public final class AdMobExtras
implements NetworkExtras {
    private final Bundle mExtras;

    /*
     * Enabled aggressive block sorting
     */
    public AdMobExtras(Bundle bundle) {
        bundle = bundle != null ? new Bundle(bundle) : null;
        this.mExtras = bundle;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }
}

