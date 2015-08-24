/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.Map;

public interface DataItem
extends Freezable<DataItem> {
    public Map<String, DataItemAsset> getAssets();

    public byte[] getData();

    public Uri getUri();

    public DataItem setData(byte[] var1);
}

