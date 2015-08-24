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
public class TrashResourceRequest
implements SafeParcelable {
    public static final Parcelable.Creator<TrashResourceRequest> CREATOR;
    final int BR;
    final DriveId Od;

    static;

    TrashResourceRequest(int var1, DriveId var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

