/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.panorama.PanoramaApi;

/*
 * Exception performing whole class analysis.
 */
class ne
implements PanoramaApi.PanoramaResult {
    private final Status CM;
    private final Intent akC;

    public ne(Status var1, Intent var2);

    @Override
    public Status getStatus();

    @Override
    public Intent getViewerIntent();
}

