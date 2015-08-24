/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

public abstract class a
implements Releasable,
Result {
    protected final Status CM;
    protected final DataHolder II;

    protected a(DataHolder dataHolder) {
        this.CM = new Status(dataHolder.getStatusCode());
        this.II = dataHolder;
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    @Override
    public void release() {
        if (this.II != null) {
            this.II.close();
        }
    }
}

