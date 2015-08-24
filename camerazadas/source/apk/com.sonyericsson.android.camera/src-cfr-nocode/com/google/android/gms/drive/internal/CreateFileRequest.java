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
public class CreateFileRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CreateFileRequest> CREATOR;
    final int BR;
    final String Nn;
    final Contents Of;
    final MetadataBundle Ol;
    final Integer Om;
    final DriveId On;
    final boolean Oo;
    final int Op;
    final int Oq;

    static;

    CreateFileRequest(int var1, DriveId var2, MetadataBundle var3, Contents var4, Integer var5, boolean var6, String var7, int var8, int var9);

    public CreateFileRequest(DriveId var1, MetadataBundle var2, int var3, int var4, ExecutionOptions var5);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

