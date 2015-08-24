/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.internal.k;
import com.google.android.gms.wearable.internal.l;
import java.util.HashMap;
import java.util.Map;

public final class o
extends d
implements DataItem {
    private final int aaK;

    public o(DataHolder dataHolder, int n, int n2) {
        super(dataHolder, n);
        this.aaK = n2;
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.pY();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Map<String, DataItemAsset> getAssets() {
        HashMap<String, DataItemAsset> hashMap = new HashMap<String, DataItemAsset>(this.aaK);
        for (int i = 0; i < this.aaK; ++i) {
            k k = new k(this.II, this.JX + i);
            if (k.getDataItemKey() == null) continue;
            hashMap.put(k.getDataItemKey(), k);
        }
        return hashMap;
    }

    @Override
    public byte[] getData() {
        return this.getByteArray("data");
    }

    @Override
    public Uri getUri() {
        return Uri.parse(this.getString("path"));
    }

    public DataItem pY() {
        return new l(this);
    }

    @Override
    public DataItem setData(byte[] arrby) {
        throw new UnsupportedOperationException();
    }
}

