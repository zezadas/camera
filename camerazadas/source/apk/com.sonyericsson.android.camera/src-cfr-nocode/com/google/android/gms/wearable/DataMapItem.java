/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataMap;

/*
 * Exception performing whole class analysis.
 */
public class DataMapItem {
    private final DataMap auX;
    private final Uri mUri;

    private DataMapItem(DataItem var1);

    private DataMap a(DataItem var1);

    public static DataMapItem fromDataItem(DataItem var0);

    public DataMap getDataMap();

    public Uri getUri();
}

