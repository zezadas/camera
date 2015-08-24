/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.internal.h;

public class DataEventBuffer
extends g<DataEvent>
implements Result {
    private final Status CM;

    public DataEventBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.CM = new Status(dataHolder.getStatusCode());
    }

    @Override
    protected /* synthetic */ Object f(int n, int n2) {
        return this.p(n, n2);
    }

    @Override
    protected String gD() {
        return "path";
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    protected DataEvent p(int n, int n2) {
        return new h(this.II, n, n2);
    }
}

