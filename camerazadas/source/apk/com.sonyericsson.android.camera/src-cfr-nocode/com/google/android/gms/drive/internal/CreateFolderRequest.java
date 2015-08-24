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
public class CreateFolderRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CreateFolderRequest> CREATOR;
    final int BR;
    final MetadataBundle Ol;
    final DriveId On;

    static;

    CreateFolderRequest(int var1, DriveId var2, MetadataBundle var3);

    public CreateFolderRequest(DriveId var1, MetadataBundle var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

