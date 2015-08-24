/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ValuesSetDetails
implements SafeParcelable {
    public static final Parcelable.Creator<ValuesSetDetails> CREATOR;
    final int BR;
    final int Rr;
    final int Rs;
    final int mIndex;

    static;

    ValuesSetDetails(int var1, int var2, int var3, int var4);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

