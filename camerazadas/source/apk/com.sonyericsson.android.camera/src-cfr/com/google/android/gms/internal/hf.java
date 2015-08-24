/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.he;
import com.google.android.gms.internal.hi;
import com.google.android.gms.internal.hj;

public class hf
implements Parcelable.Creator<he> {
    static void a(he he, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a((Parcel)parcel, (int)1, (Parcelable[])he.BS, (int)n, (boolean)false);
        b.c(parcel, 1000, he.BR);
        b.a(parcel, 2, he.BT, false);
        b.a(parcel, 3, he.BU);
        b.a(parcel, 4, he.account, n, false);
        b.H(parcel, n2);
    }

    public he[] I(int n) {
        return new he[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.l(parcel);
    }

    public he l(Parcel parcel) {
        boolean bl = false;
        Account account = null;
        int n = a.C(parcel);
        String string = null;
        hi[] arrhi = null;
        int n2 = 0;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    arrhi = (hi[])a.b(parcel, n3, hi.CREATOR);
                    continue block7;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    string = a.o(parcel, n3);
                    continue block7;
                }
                case 3: {
                    bl = a.c(parcel, n3);
                    continue block7;
                }
                case 4: 
            }
            account = a.a(parcel, n3, Account.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new he(n2, arrhi, string, bl, account);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.I(n);
    }
}

