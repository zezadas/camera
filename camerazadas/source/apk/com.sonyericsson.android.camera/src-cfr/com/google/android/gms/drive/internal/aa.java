/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.GetMetadataRequest;

public class aa
implements Parcelable.Creator<GetMetadataRequest> {
    static void a(GetMetadataRequest getMetadataRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, getMetadataRequest.BR);
        b.a(parcel, 2, getMetadataRequest.Od, n, false);
        b.H(parcel, n2);
    }

    public GetMetadataRequest ah(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        DriveId driveId = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            driveId = a.a(parcel, n3, DriveId.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new GetMetadataRequest(n2, driveId);
    }

    public GetMetadataRequest[] bt(int n) {
        return new GetMetadataRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ah(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bt(n);
    }
}

