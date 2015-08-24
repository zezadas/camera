/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SetResourceParentsRequest
implements SafeParcelable {
    public static final Parcelable.Creator<SetResourceParentsRequest> CREATOR;
    final int BR;
    final List<DriveId> PA;
    final DriveId Pz;

    static;

    SetResourceParentsRequest(int var1, DriveId var2, List<DriveId> var3);

    public SetResourceParentsRequest(DriveId var1, List<DriveId> var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

