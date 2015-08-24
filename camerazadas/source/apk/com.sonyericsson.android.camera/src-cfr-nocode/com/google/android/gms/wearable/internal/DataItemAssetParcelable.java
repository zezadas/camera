/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.DataItemAsset;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DataItemAssetParcelable
implements SafeParcelable,
DataItemAsset {
    public static final Parcelable.Creator<DataItemAssetParcelable> CREATOR;
    private final String BL;
    final int BR;
    private final String JO;

    static;

    DataItemAssetParcelable(int var1, String var2, String var3);

    public DataItemAssetParcelable(DataItemAsset var1);

    @Override
    public int describeContents();

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public String getDataItemKey();

    @Override
    public String getId();

    @Override
    public boolean isDataValid();

    public DataItemAsset pX();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

