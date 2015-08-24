/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.OpenContentsRequest;

public class au
implements Parcelable.Creator<OpenContentsRequest> {
    static void a(OpenContentsRequest openContentsRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, openContentsRequest.BR);
        b.a(parcel, 2, openContentsRequest.Od, n, false);
        b.c(parcel, 3, openContentsRequest.MV);
        b.c(parcel, 4, openContentsRequest.Px);
        b.H(parcel, n2);
    }

    public OpenContentsRequest aw(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        DriveId driveId = null;
        int n3 = 0;
        int n4 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block6;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block6;
                }
                case 2: {
                    driveId = a.a(parcel, n5, DriveId.CREATOR);
                    continue block6;
                }
                case 3: {
                    n3 = a.g(parcel, n5);
                    continue block6;
                }
                case 4: 
            }
            n = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new OpenContentsRequest(n4, driveId, n3, n);
    }

    public OpenContentsRequest[] bI(int n) {
        return new OpenContentsRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aw(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bI(n);
    }
}

