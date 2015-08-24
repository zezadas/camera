/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.model.moments;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.ny;
import com.google.android.gms.plus.model.moments.Moment;

public final class MomentBuffer
extends DataBuffer<Moment> {
    public MomentBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    public Moment get(int n) {
        return new ny(this.II, n);
    }
}

