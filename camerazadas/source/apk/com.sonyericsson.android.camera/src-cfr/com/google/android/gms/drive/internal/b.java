/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.AuthorizeAccessRequest;

public class b
implements Parcelable.Creator<AuthorizeAccessRequest> {
    static void a(AuthorizeAccessRequest authorizeAccessRequest, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, authorizeAccessRequest.BR);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, authorizeAccessRequest.Ob);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, authorizeAccessRequest.MW, n, false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }

    public AuthorizeAccessRequest W(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        long l = 0;
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
                    l = a.i(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            driveId = a.a(parcel, n3, DriveId.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new AuthorizeAccessRequest(n2, l, driveId);
    }

    public AuthorizeAccessRequest[] bf(int n) {
        return new AuthorizeAccessRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.W(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bf(n);
    }
}

