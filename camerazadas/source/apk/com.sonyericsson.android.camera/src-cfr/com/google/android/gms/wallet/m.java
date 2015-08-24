/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;

public class m
implements Parcelable.Creator<NotifyTransactionStatusRequest> {
    static void a(NotifyTransactionStatusRequest notifyTransactionStatusRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, notifyTransactionStatusRequest.BR);
        b.a(parcel, 2, notifyTransactionStatusRequest.asB, false);
        b.c(parcel, 3, notifyTransactionStatusRequest.status);
        b.a(parcel, 4, notifyTransactionStatusRequest.atB, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dy(parcel);
    }

    public NotifyTransactionStatusRequest dy(Parcel parcel) {
        String string = null;
        int n = 0;
        int n2 = a.C(parcel);
        String string2 = null;
        int n3 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block6;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block6;
                }
                case 2: {
                    string2 = a.o(parcel, n4);
                    continue block6;
                }
                case 3: {
                    n = a.g(parcel, n4);
                    continue block6;
                }
                case 4: 
            }
            string = a.o(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new NotifyTransactionStatusRequest(n3, string2, n, string);
    }

    public NotifyTransactionStatusRequest[] fz(int n) {
        return new NotifyTransactionStatusRequest[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fz(n);
    }
}

