/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.i;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OnListParentsResponse
extends i
implements SafeParcelable {
    public static final Parcelable.Creator<OnListParentsResponse> CREATOR;
    final int BR;
    final DataHolder Pv;

    static;

    OnListParentsResponse(int var1, DataHolder var2);

    @Override
    protected void I(Parcel var1, int var2);

    @Override
    public int describeContents();

    public DataHolder ik();
}

