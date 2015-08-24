/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.internal.g;
import com.google.android.gms.wearable.internal.o;

public final class h
extends d
implements DataEvent {
    private final int aaK;

    public h(DataHolder dataHolder, int n, int n2) {
        super(dataHolder, n);
        this.aaK = n2;
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.pW();
    }

    @Override
    public DataItem getDataItem() {
        return new o(this.II, this.JX, this.aaK);
    }

    @Override
    public int getType() {
        return this.getInteger("event_type");
    }

    public DataEvent pW() {
        return new g(this);
    }
}

