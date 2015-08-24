/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.internal.i;

public class k
extends d
implements DataItemAsset {
    public k(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.pX();
    }

    @Override
    public String getDataItemKey() {
        return this.getString("asset_key");
    }

    @Override
    public String getId() {
        return this.getString("asset_id");
    }

    public DataItemAsset pX() {
        return new i(this);
    }
}

