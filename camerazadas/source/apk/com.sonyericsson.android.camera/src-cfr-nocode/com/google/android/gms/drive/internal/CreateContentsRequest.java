/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CreateContentsRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CreateContentsRequest> CREATOR;
    final int BR;
    final int MV;

    static;

    public CreateContentsRequest(int var1);

    CreateContentsRequest(int var1, int var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

