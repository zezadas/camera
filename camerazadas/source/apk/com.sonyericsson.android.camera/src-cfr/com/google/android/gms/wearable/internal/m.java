/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.internal.DataItemAssetParcelable;
import com.google.android.gms.wearable.internal.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class m
implements SafeParcelable,
DataItem {
    public static final Parcelable.Creator<m> CREATOR = new n();
    final int BR;
    private byte[] acH;
    private final Map<String, DataItemAsset> avv;
    private final Uri mUri;

    m(int n, Uri object, Bundle bundle, byte[] arrby) {
        this.BR = n;
        this.mUri = object;
        object = new HashMap();
        bundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        for (String string : bundle.keySet()) {
            object.put(string, (DataItemAssetParcelable)bundle.getParcelable(string));
        }
        this.avv = object;
        this.acH = arrby;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.pZ();
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

    public m m(byte[] arrby) {
        this.acH = arrby;
        return this;
    }

    public Bundle pT() {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        for (Map.Entry<String, DataItemAsset> entry : this.avv.entrySet()) {
            bundle.putParcelable(entry.getKey(), new DataItemAssetParcelable(entry.getValue()));
        }
        return bundle;
    }

    public m pZ() {
        return this;
    }

    @Override
    public /* synthetic */ DataItem setData(byte[] arrby) {
        return this.m(arrby);
    }

    public String toString() {
        return this.toString(Log.isLoggable("DataItem", 3));
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString(boolean bl) {
        StringBuilder stringBuilder = new StringBuilder("DataItemParcelable[");
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

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        n.a(this, parcel, n);
    }
}

