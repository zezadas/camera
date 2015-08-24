/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.hm;

public class hn
implements Parcelable.Creator<hm.a> {
    static void a(hm.a a, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, a.Cj, n, false);
        b.c(parcel, 1000, a.BR);
        b.H(parcel, n2);
    }

    public hm.a[] M(int n) {
        return new hm.a[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.p(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.M(n);
    }

    public hm.a p(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        Account account = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    account = a.a(parcel, n3, Account.CREATOR);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new hm.a(n2, account);
    }
}

