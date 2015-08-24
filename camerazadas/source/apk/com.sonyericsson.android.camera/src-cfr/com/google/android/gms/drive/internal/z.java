/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.internal.GetDriveIdFromUniqueIdentifierRequest;

public class z
implements Parcelable.Creator<GetDriveIdFromUniqueIdentifierRequest> {
    static void a(GetDriveIdFromUniqueIdentifierRequest getDriveIdFromUniqueIdentifierRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, getDriveIdFromUniqueIdentifierRequest.BR);
        b.a(parcel, 2, getDriveIdFromUniqueIdentifierRequest.Ph, false);
        b.a(parcel, 3, getDriveIdFromUniqueIdentifierRequest.Pi);
        b.H(parcel, n);
    }

    public GetDriveIdFromUniqueIdentifierRequest ag(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        String string = null;
        int n2 = 0;
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
                    string = a.o(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new GetDriveIdFromUniqueIdentifierRequest(n2, string, bl);
    }

    public GetDriveIdFromUniqueIdentifierRequest[] bs(int n) {
        return new GetDriveIdFromUniqueIdentifierRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ag(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bs(n);
    }
}

