/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class z
implements SafeParcelable {
    public static final Parcelable.Creator<z> CREATOR;
    public final ParcelFileDescriptor avB;
    public final int statusCode;
    public final int versionCode;

    static;

    z(int var1, int var2, ParcelFileDescriptor var3);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

