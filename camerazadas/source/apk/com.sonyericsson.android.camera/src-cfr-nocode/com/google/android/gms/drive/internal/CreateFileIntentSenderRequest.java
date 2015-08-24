/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CreateFileIntentSenderRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CreateFileIntentSenderRequest> CREATOR;
    final int BR;
    final String Nw;
    final DriveId Ny;
    final MetadataBundle Ol;
    final Integer Om;
    final int uQ;

    static;

    CreateFileIntentSenderRequest(int var1, MetadataBundle var2, int var3, String var4, DriveId var5, Integer var6);

    public CreateFileIntentSenderRequest(MetadataBundle var1, int var2, String var3, DriveId var4, int var5);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

