/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.internal.j;

public class DataItemAssetParcelable
implements SafeParcelable,
DataItemAsset {
    public static final Parcelable.Creator<DataItemAssetParcelable> CREATOR = new j();
    private final String BL;
    final int BR;
    private final String JO;

    DataItemAssetParcelable(int n, String string, String string2) {
        this.BR = n;
        this.BL = string;
        this.JO = string2;
    }

    public DataItemAssetParcelable(DataItemAsset dataItemAsset) {
        this.BR = 1;
        this.BL = o.i(dataItemAsset.getId());
        this.JO = o.i(dataItemAsset.getDataItemKey());
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.pX();
    }

    @Override
    public String getDataItemKey() {
        return this.JO;
    }

    @Override
    public String getId() {
        return this.BL;
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public DataItemAsset pX() {
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("DataItemAssetParcelable[");
        stringBuilder.append("@");
        stringBuilder.append(Integer.toHexString(this.hashCode()));
        if (this.BL == null) {
            stringBuilder.append(",noid");
        } else {
            stringBuilder.append(",");
            stringBuilder.append(this.BL);
        }
        stringBuilder.append(", key=");
        stringBuilder.append(this.JO);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        j.a(this, parcel, n);
    }
}

