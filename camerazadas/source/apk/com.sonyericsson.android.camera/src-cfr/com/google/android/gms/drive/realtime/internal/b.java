/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.drive.realtime.internal.EndCompoundOperationRequest;

public class b
implements Parcelable.Creator<EndCompoundOperationRequest> {
    static void a(EndCompoundOperationRequest endCompoundOperationRequest, Parcel parcel, int n) {
        n = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, endCompoundOperationRequest.BR);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n);
    }

    public EndCompoundOperationRequest aV(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        block3 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block3;
                }
                case 1: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new EndCompoundOperationRequest(n2);
    }

    public EndCompoundOperationRequest[] ch(int n) {
        return new EndCompoundOperationRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aV(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ch(n);
    }
}

