/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class AccountChangeEventsRequestCreator
implements Parcelable.Creator<AccountChangeEventsRequest> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(AccountChangeEventsRequest accountChangeEventsRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, accountChangeEventsRequest.Di);
        b.c(parcel, 2, accountChangeEventsRequest.Dl);
        b.a(parcel, 3, accountChangeEventsRequest.Dd, false);
        b.H(parcel, n);
    }

    @Override
    public AccountChangeEventsRequest createFromParcel(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        String string = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: {
                    n = a.g(parcel, n4);
                    continue block5;
                }
                case 3: 
            }
            string = a.o(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new AccountChangeEventsRequest(n3, n, string);
    }

    public AccountChangeEventsRequest[] newArray(int n) {
        return new AccountChangeEventsRequest[n];
    }
}

