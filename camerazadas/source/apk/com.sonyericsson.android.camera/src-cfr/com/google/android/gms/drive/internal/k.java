/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.CreateFolderRequest;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class k
implements Parcelable.Creator<CreateFolderRequest> {
    static void a(CreateFolderRequest createFolderRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, createFolderRequest.BR);
        b.a(parcel, 2, createFolderRequest.On, n, false);
        b.a(parcel, 3, createFolderRequest.Ol, n, false);
        b.H(parcel, n2);
    }

    public CreateFolderRequest ad(Parcel parcel) {
        MetadataBundle metadataBundle = null;
        int n = a.C(parcel);
        int n2 = 0;
        DriveId driveId = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: {
                    driveId = a.a(parcel, n3, DriveId.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            metadataBundle = a.a(parcel, n3, MetadataBundle.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new CreateFolderRequest(n2, driveId, metadataBundle);
    }

    public CreateFolderRequest[] bn(int n) {
        return new CreateFolderRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ad(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bn(n);
    }
}

