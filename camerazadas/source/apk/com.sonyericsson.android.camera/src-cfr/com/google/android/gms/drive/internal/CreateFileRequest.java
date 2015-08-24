/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.internal.j;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class CreateFileRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CreateFileRequest> CREATOR = new j();
    final int BR;
    final String Nn;
    final Contents Of;
    final MetadataBundle Ol;
    final Integer Om;
    final DriveId On;
    final boolean Oo;
    final int Op;
    final int Oq;

    /*
     * Enabled aggressive block sorting
     */
    CreateFileRequest(int n, DriveId driveId, MetadataBundle metadataBundle, Contents contents, Integer n2, boolean bl, String string, int n3, int n4) {
        if (contents != null && n4 != 0) {
            boolean bl2 = contents.getRequestId() == n4;
            o.b(bl2, (Object)"inconsistent contents reference");
        }
        if ((n2 == null || n2 == 0) && contents == null && n4 == 0) {
            throw new IllegalArgumentException("Need a valid contents");
        }
        this.BR = n;
        this.On = o.i(driveId);
        this.Ol = o.i(metadataBundle);
        this.Of = contents;
        this.Om = n2;
        this.Nn = string;
        this.Op = n3;
        this.Oo = bl;
        this.Oq = n4;
    }

    public CreateFileRequest(DriveId driveId, MetadataBundle metadataBundle, int n, int n2, ExecutionOptions executionOptions) {
        this(2, driveId, metadataBundle, null, n2, executionOptions.hP(), executionOptions.hO(), executionOptions.hQ(), n);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        j.a(this, parcel, n);
    }
}

