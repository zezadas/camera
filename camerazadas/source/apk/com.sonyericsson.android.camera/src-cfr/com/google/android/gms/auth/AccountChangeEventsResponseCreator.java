/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.AccountChangeEvent;
import com.google.android.gms.auth.AccountChangeEventCreator;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
import java.util.List;

public class AccountChangeEventsResponseCreator
implements Parcelable.Creator<AccountChangeEventsResponse> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(AccountChangeEventsResponse accountChangeEventsResponse, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, accountChangeEventsResponse.Di);
        b.c(parcel, 2, accountChangeEventsResponse.me, false);
        b.H(parcel, n);
    }

    @Override
    public AccountChangeEventsResponse createFromParcel(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList arrayList = null;
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
            arrayList = a.c(parcel, n3, AccountChangeEvent.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new AccountChangeEventsResponse(n2, arrayList);
    }

    public AccountChangeEventsResponse[] newArray(int n) {
        return new AccountChangeEventsResponse[n];
    }
}

