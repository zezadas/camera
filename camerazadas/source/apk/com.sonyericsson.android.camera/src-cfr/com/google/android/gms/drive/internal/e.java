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
import com.google.android.gms.drive.internal.CloseContentsAndUpdateMetadataRequest;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class e
implements Parcelable.Creator<CloseContentsAndUpdateMetadataRequest> {
    static void a(CloseContentsAndUpdateMetadataRequest closeContentsAndUpdateMetadataRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, closeContentsAndUpdateMetadataRequest.BR);
        b.a(parcel, 2, closeContentsAndUpdateMetadataRequest.Od, n, false);
        b.a(parcel, 3, closeContentsAndUpdateMetadataRequest.Oe, n, false);
        b.a(parcel, 4, closeContentsAndUpdateMetadataRequest.Of, n, false);
        b.a(parcel, 5, closeContentsAndUpdateMetadataRequest.No);
        b.a(parcel, 6, closeContentsAndUpdateMetadataRequest.Nn, false);
        b.c(parcel, 7, closeContentsAndUpdateMetadataRequest.Og);
        b.H(parcel, n2);
    }

    public CloseContentsAndUpdateMetadataRequest Y(Parcel parcel) {
        int n = 0;
        String string = null;
        int n2 = a.C(parcel);
        boolean bl = false;
        Contents contents = null;
        MetadataBundle metadataBundle = null;
        DriveId driveId = null;
        int n3 = 0;
        block9 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block9;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block9;
                }
                case 2: {
                    driveId = a.a(parcel, n4, DriveId.CREATOR);
                    continue block9;
                }
                case 3: {
                    metadataBundle = a.a(parcel, n4, MetadataBundle.CREATOR);
                    continue block9;
                }
                case 4: {
                    contents = a.a(parcel, n4, Contents.CREATOR);
                    continue block9;
                }
                case 5: {
                    bl = a.c(parcel, n4);
                    continue block9;
                }
                case 6: {
                    string = a.o(parcel, n4);
                    continue block9;
                }
                case 7: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new CloseContentsAndUpdateMetadataRequest(n3, driveId, metadataBundle, contents, bl, string, n);
    }

    public CloseContentsAndUpdateMetadataRequest[] bh(int n) {
        return new CloseContentsAndUpdateMetadataRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.Y(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bh(n);
    }
}

