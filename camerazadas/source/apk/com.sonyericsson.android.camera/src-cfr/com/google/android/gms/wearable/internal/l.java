/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class l
implements DataItem {
    private byte[] acH;
    private Map<String, DataItemAsset> avv;
    private Uri mUri;

    public l(DataItem object) {
        this.mUri = object.getUri();
        this.acH = object.getData();
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, DataItemAsset> entry : object.getAssets().entrySet()) {
            if (entry.getKey() == null) continue;
            hashMap.put(entry.getKey(), entry.getValue().freeze());
        }
        this.avv = Collections.unmodifiableMap(hashMap);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.pY();
    }

    @Override
    public Map<String, DataItemAsset> getAssets() {
        return this.avv;
    }

    @Override
    public byte[] getData() {
        return this.acH;
    }

    @Override
    public Uri getUri() {
        return this.mUri;
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public DataItem pY() {
        return this;
    }

    @Override
    public DataItem setData(byte[] arrby) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.toString(Log.isLoggable("DataItem", 3));
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString(boolean bl) {
        StringBuilder stringBuilder = new StringBuilder("DataItemEntity[");
        stringBuilder.append("@");
        stringBuilder.append(Integer.toHexString(this.hashCode()));
        StringBuilder stringBuilder2 = new StringBuilder().append(",dataSz=");
        Object object = this.acH == null ? "null" : Integer.valueOf(this.acH.length);
        stringBuilder.append(stringBuilder2.append(object).toString());
        stringBuilder.append(", numAssets=" + this.avv.size());
        stringBuilder.append(", uri=" + this.mUri);
        if (!bl) {
            stringBuilder.append("]");
            return stringBuilder.toString();
        }
        stringBuilder.append("]\n  assets: ");
        object = this.avv.keySet().iterator();
        do {
            if (!object.hasNext()) {
                stringBuilder.append("\n  ]");
                return stringBuilder.toString();
            }
            String string = object.next();
            stringBuilder.append("\n    " + string + ": " + this.avv.get(string));
        } while (true);
    }
}

