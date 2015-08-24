/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OpenContentsRequest
implements SafeParcelable {
    public static final Parcelable.Creator<OpenContentsRequest> CREATOR;
    final int BR;
    final int MV;
    final DriveId Od;
    final int Px;

    static;

    OpenContentsRequest(int var1, DriveId var2, int var3, int var4);

    public OpenContentsRequest(DriveId var1, int var2, int var3);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

