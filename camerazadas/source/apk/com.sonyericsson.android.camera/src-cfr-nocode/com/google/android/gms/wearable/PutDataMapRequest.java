/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import com.google.android.gms.wearable.DataMap;
import com.google.android.gms.wearable.DataMapItem;
import com.google.android.gms.wearable.PutDataRequest;

/*
 * Exception performing whole class analysis.
 */
public class PutDataMapRequest {
    private final DataMap auX;
    private final PutDataRequest auY;

    private PutDataMapRequest(PutDataRequest var1, DataMap var2);

    public static PutDataMapRequest create(String var0);

    public static PutDataMapRequest createFromDataMapItem(DataMapItem var0);

    public static PutDataMapRequest createWithAutoAppendedId(String var0);

    public PutDataRequest asPutDataRequest();

    public DataMap getDataMap();

    public Uri getUri();
}

