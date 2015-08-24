/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class m
implements SafeParcelable,
DataItem {
    public static final Parcelable.Creator<m> CREATOR;
    final int BR;
    private byte[] acH;
    private final Map<String, DataItemAsset> avv;
    private final Uri mUri;

    static;

    m(int var1, Uri var2, Bundle var3, byte[] var4);

    @Override
    public int describeContents();

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

    public m m(byte[] var1);

    public Bundle pT();

    public m pZ();

    @Override
    public /* synthetic */ DataItem setData(byte[] var1);

    public String toString();

    public String toString(boolean var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

