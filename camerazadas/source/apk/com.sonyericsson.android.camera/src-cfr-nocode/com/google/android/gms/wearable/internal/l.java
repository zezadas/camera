/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.net.Uri;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public class l
implements DataItem {
    private byte[] acH;
    private Map<String, DataItemAsset> avv;
    private Uri mUri;

    public l(DataItem var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public Map<String, DataItemAsset> getAssets();

    @Override
    public byte[] getData();

    @Override
    public Uri getUri();

    @Override
    public boolean isDataValid();

    public DataItem pY();

    @Override
    public DataItem setData(byte[] var1);

    public String toString();

    public String toString(boolean var1);
}

