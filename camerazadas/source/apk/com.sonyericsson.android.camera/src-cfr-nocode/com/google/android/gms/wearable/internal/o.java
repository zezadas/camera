/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public final class o
extends d
implements DataItem {
    private final int aaK;

    public o(DataHolder var1, int var2, int var3);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public Map<String, DataItemAsset> getAssets();

    @Override
    public byte[] getData();

    @Override
    public Uri getUri();

    public DataItem pY();

    @Override
    public DataItem setData(byte[] var1);
}

