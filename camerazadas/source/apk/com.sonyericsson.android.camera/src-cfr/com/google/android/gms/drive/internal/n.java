/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.internal.DisconnectRequest;

public class n
implements Parcelable.Creator<DisconnectRequest> {
    static void a(DisconnectRequest disconnectRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, disconnectRequest.BR);
        b.H(parcel, n);
    }

    public DisconnectRequest af(Parcel parcel) {
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
        return new DisconnectRequest(n2);
    }

    public DisconnectRequest[] bp(int n) {
        return new DisconnectRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.af(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bp(n);
    }
}

