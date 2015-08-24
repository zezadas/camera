/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.m;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ao
implements SafeParcelable {
    public static final Parcelable.Creator<ao> CREATOR;
    public final m avA;
    public final int statusCode;
    public final int versionCode;

    static;

    ao(int var1, int var2, m var3);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

