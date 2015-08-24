/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CloseContentsAndUpdateMetadataRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CloseContentsAndUpdateMetadataRequest> CREATOR;
    final int BR;
    final String Nn;
    final boolean No;
    final DriveId Od;
    final MetadataBundle Oe;
    final Contents Of;
    final int Og;

    static;

    CloseContentsAndUpdateMetadataRequest(int var1, DriveId var2, MetadataBundle var3, Contents var4, boolean var5, String var6, int var7);

    public CloseContentsAndUpdateMetadataRequest(DriveId var1, MetadataBundle var2, Contents var3, ExecutionOptions var4);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

