/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.internal.o;

public class DataItemBuffer
extends g<DataItem>
implements Result {
    private final Status CM;

    public DataItemBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.CM = new Status(dataHolder.getStatusCode());
    }

    @Override
    protected /* synthetic */ Object f(int n, int n2) {
        return this.q(n, n2);
    }

    @Override
    protected String gD() {
        return "path";
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    protected DataItem q(int n, int n2) {
        return new o(this.II, n, n2);
    }
}

