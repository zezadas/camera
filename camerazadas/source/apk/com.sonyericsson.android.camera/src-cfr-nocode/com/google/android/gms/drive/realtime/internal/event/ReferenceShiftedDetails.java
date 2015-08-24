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
public class ReferenceShiftedDetails
implements SafeParcelable {
    public static final Parcelable.Creator<ReferenceShiftedDetails> CREATOR;
    final int BR;
    final String RH;
    final String RI;
    final int RJ;
    final int RK;

    static;

    ReferenceShiftedDetails(int var1, String var2, String var3, int var4, int var5);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

