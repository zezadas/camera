/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StorageStats
implements SafeParcelable {
    public static final Parcelable.Creator<StorageStats> CREATOR;
    final int BR;
    final long NB;
    final long NC;
    final long ND;
    final long NE;
    final int NF;

    static;

    StorageStats(int var1, long var2, long var4, long var6, long var8, int var10);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

