/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.panorama.PanoramaApi;

class ne
implements PanoramaApi.PanoramaResult {
    private final Status CM;
    private final Intent akC;

    public ne(Status status, Intent intent) {
        this.CM = o.i(status);
        this.akC = intent;
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    @Override
    public Intent getViewerIntent() {
        return this.akC;
    }
}

