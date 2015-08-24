/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;

public class g
implements DataEvent {
    private int FD;
    private DataItem avs;

    public g(DataEvent dataEvent) {
        this.FD = dataEvent.getType();
        this.avs = (DataItem)dataEvent.getDataItem().freeze();
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.pW();
    }

    @Override
    public DataItem getDataItem() {
        return this.avs;
    }

    @Override
    public int getType() {
        return this.FD;
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public DataEvent pW() {
        return this;
    }
}

