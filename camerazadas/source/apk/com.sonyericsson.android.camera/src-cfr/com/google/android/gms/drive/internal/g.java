/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.internal.CreateContentsRequest;

public class g
implements Parcelable.Creator<CreateContentsRequest> {
    static void a(CreateContentsRequest createContentsRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, createContentsRequest.BR);
        b.c(parcel, 2, createContentsRequest.MV);
        b.H(parcel, n);
    }

    public CreateContentsRequest aa(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        int n3 = 536870912;
        block4 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block4;
                }
                case 1: {
                    n2 = a.g(parcel, n4);
                    continue block4;
                }
                case 2: 
            }
            n3 = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new CreateContentsRequest(n2, n3);
    }

    public CreateContentsRequest[] bj(int n) {
        return new CreateContentsRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aa(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bj(n);
    }
}

