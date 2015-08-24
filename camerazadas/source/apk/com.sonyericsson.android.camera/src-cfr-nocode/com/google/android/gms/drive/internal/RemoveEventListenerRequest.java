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
public class RemoveEventListenerRequest
implements SafeParcelable {
    public static final Parcelable.Creator<RemoveEventListenerRequest> CREATOR;
    final int BR;
    final DriveId MW;
    final int Oa;

    static;

    RemoveEventListenerRequest(int var1, DriveId var2, int var3);

    public RemoveEventListenerRequest(DriveId var1, int var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

