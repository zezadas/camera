/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.hg;

public class hh
implements Parcelable.Creator<hg> {
    static void a(hg hg, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, hg.BZ, false);
        b.c(parcel, 1000, hg.BR);
        b.a(parcel, 2, hg.Ca, false);
        b.a(parcel, 3, hg.Cb, false);
        b.H(parcel, n);
    }

    public hg[] J(int n) {
        return new hg[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.m(parcel);
    }

    public hg m(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string2 = null;
        String string3 = null;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    string3 = a.o(parcel, n3);
                    continue block6;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    string2 = a.o(parcel, n3);
                    continue block6;
                }
                case 3: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new hg(n2, string3, string2, string);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.J(n);
    }
}

