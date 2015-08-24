/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.c;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@Deprecated
public class r
implements SafeParcelable {
    public static final Parcelable.Creator<r> CREATOR;
    public final c avx;
    public final int statusCode;
    public final int versionCode;

    static;

    r(int var1, int var2, c var3);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

