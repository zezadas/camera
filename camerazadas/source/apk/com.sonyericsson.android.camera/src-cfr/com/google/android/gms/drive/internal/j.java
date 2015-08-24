/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.CreateFileRequest;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class j
implements Parcelable.Creator<CreateFileRequest> {
    static void a(CreateFileRequest createFileRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, createFileRequest.BR);
        b.a(parcel, 2, createFileRequest.On, n, false);
        b.a(parcel, 3, createFileRequest.Ol, n, false);
        b.a(parcel, 4, createFileRequest.Of, n, false);
        b.a(parcel, 5, createFileRequest.Om, false);
        b.a(parcel, 6, createFileRequest.Oo);
        b.a(parcel, 7, createFileRequest.Nn, false);
        b.c(parcel, 8, createFileRequest.Op);
        b.c(parcel, 9, createFileRequest.Oq);
        b.H(parcel, n2);
    }

    public CreateFileRequest ac(Parcel parcel) {
        int n = 0;
        String string = null;
        int n2 = a.C(parcel);
        int n3 = 0;
        boolean bl = false;
        Integer n4 = null;
        Contents contents = null;
        MetadataBundle metadataBundle = null;
        DriveId driveId = null;
        int n5 = 0;
        block11 : while (parcel.dataPosition() < n2) {
            int n6 = a.B(parcel);
            switch (a.aD(n6)) {
                default: {
                    a.b(parcel, n6);
                    continue block11;
                }
                case 1: {
                    n5 = a.g(parcel, n6);
                    continue block11;
                }
                case 2: {
                    driveId = a.a(parcel, n6, DriveId.CREATOR);
                    continue block11;
                }
                case 3: {
                    metadataBundle = a.a(parcel, n6, MetadataBundle.CREATOR);
                    continue block11;
                }
                case 4: {
                    contents = a.a(parcel, n6, Contents.CREATOR);
                    continue block11;
                }
                case 5: {
                    n4 = a.h(parcel, n6);
                    continue block11;
                }
                case 6: {
                    bl = a.c(parcel, n6);
                    continue block11;
                }
                case 7: {
                    string = a.o(parcel, n6);
                    continue block11;
                }
                case 8: {
                    n3 = a.g(parcel, n6);
                    continue block11;
                }
                case 9: 
            }
            n = a.g(parcel, n6);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new CreateFileRequest(n5, driveId, metadataBundle, contents, n4, bl, string, n3, n);
    }

    public CreateFileRequest[] bm(int n) {
        return new CreateFileRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ac(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bm(n);
    }
}

