/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.AccountChangeEvent;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class AccountChangeEventCreator
implements Parcelable.Creator<AccountChangeEvent> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(AccountChangeEvent accountChangeEvent, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, accountChangeEvent.Di);
        b.a(parcel, 2, accountChangeEvent.Dj);
        b.a(parcel, 3, accountChangeEvent.Dd, false);
        b.c(parcel, 4, accountChangeEvent.Dk);
        b.c(parcel, 5, accountChangeEvent.Dl);
        b.a(parcel, 6, accountChangeEvent.Dm, false);
        b.H(parcel, n);
    }

    @Override
    public AccountChangeEvent createFromParcel(Parcel parcel) {
        String string = null;
        int n = 0;
        int n2 = a.C(parcel);
        long l = 0;
        int n3 = 0;
        String string2 = null;
        int n4 = 0;
        block8 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block8;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block8;
                }
                case 2: {
                    l = a.i(parcel, n5);
                    continue block8;
                }
                case 3: {
                    string2 = a.o(parcel, n5);
                    continue block8;
                }
                case 4: {
                    n3 = a.g(parcel, n5);
                    continue block8;
                }
                case 5: {
                    n = a.g(parcel, n5);
                    continue block8;
                }
                case 6: 
            }
            string = a.o(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new AccountChangeEvent(n4, l, string2, n3, n, string);
    }

    public AccountChangeEvent[] newArray(int n) {
        return new AccountChangeEvent[n];
    }
}

