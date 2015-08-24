/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class as
implements SafeParcelable {
    public static final Parcelable.Creator<as> CREATOR;
    public final int avO;
    public final int statusCode;
    public final int versionCode;

    static;

    as(int var1, int var2, int var3);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

