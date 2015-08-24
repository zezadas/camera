/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Asset
implements SafeParcelable {
    public static final Parcelable.Creator<Asset> CREATOR;
    final int BR;
    private byte[] acH;
    private String auQ;
    public ParcelFileDescriptor auR;
    public Uri uri;

    static;

    Asset(int var1, byte[] var2, String var3, ParcelFileDescriptor var4, Uri var5);

    public static Asset createFromBytes(byte[] var0);

    public static Asset createFromFd(ParcelFileDescriptor var0);

    public static Asset createFromRef(String var0);

    public static Asset createFromUri(Uri var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public byte[] getData();

    public String getDigest();

    public ParcelFileDescriptor getFd();

    public Uri getUri();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

