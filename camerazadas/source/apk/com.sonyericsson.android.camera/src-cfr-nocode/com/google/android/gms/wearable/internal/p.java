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
public class p
implements SafeParcelable {
    public static final Parcelable.Creator<p> CREATOR;
    public final int avw;
    public final int statusCode;
    public final int versionCode;

    static;

    p(int var1, int var2, int var3);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

