/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class EndCompoundOperationRequest
implements SafeParcelable {
    public static final Parcelable.Creator<EndCompoundOperationRequest> CREATOR;
    final int BR;

    static;

    public EndCompoundOperationRequest();

    EndCompoundOperationRequest(int var1);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

