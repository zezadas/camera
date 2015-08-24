/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.internal.pc;
import com.google.android.gms.internal.pd;
import com.google.android.gms.internal.pn;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataMap;
import com.google.android.gms.wearable.DataMapItem;
import com.google.android.gms.wearable.PutDataRequest;
import java.util.List;

public class PutDataMapRequest {
    private final DataMap auX;
    private final PutDataRequest auY;

    private PutDataMapRequest(PutDataRequest putDataRequest, DataMap dataMap) {
        this.auY = putDataRequest;
        this.auX = new DataMap();
        if (dataMap != null) {
            this.auX.putAll(dataMap);
        }
    }

    public static PutDataMapRequest create(String string) {
        return new PutDataMapRequest(PutDataRequest.create(string), null);
    }

    public static PutDataMapRequest createFromDataMapItem(DataMapItem dataMapItem) {
        return new PutDataMapRequest(PutDataRequest.k(dataMapItem.getUri()), dataMapItem.getDataMap());
    }

    public static PutDataMapRequest createWithAutoAppendedId(String string) {
        return new PutDataMapRequest(PutDataRequest.createWithAutoAppendedId(string), null);
    }

    public PutDataRequest asPutDataRequest() {
        pc.a a = pc.a(this.auX);
        this.auY.setData(pn.f(a.awb));
        int n = a.awc.size();
        for (int i = 0; i < n; ++i) {
            String string = Integer.toString(i);
            Asset asset = a.awc.get(i);
            if (string == null) {
                throw new IllegalStateException("asset key cannot be null: " + asset);
            }
            if (asset == null) {
                throw new IllegalStateException("asset cannot be null: key=" + string);
            }
            if (Log.isLoggable("DataMap", 3)) {
                Log.d("DataMap", "asPutDataRequest: adding asset: " + string + " " + asset);
            }
            this.auY.putAsset(string, asset);
        }
        return this.auY;
    }

    public DataMap getDataMap() {
        return this.auX;
    }

    public Uri getUri() {
        return this.auY.getUri();
    }
}

