/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.he;
import com.google.android.gms.internal.hf;
import com.google.android.gms.internal.hg;
import com.google.android.gms.internal.hh;
import com.google.android.gms.internal.hs;

public class ht
implements Parcelable.Creator<hs> {
    static void a(hs hs, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, hs.CD, n, false);
        b.c(parcel, 1000, hs.BR);
        b.a(parcel, 2, hs.CE);
        b.c(parcel, 3, hs.CF);
        b.a(parcel, 4, hs.oT, false);
        b.a(parcel, 5, hs.CG, n, false);
        b.H(parcel, n2);
    }

    public hs[] R(int n) {
        return new hs[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.s(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.R(n);
    }

    public hs s(Parcel parcel) {
        int n = 0;
        he he = null;
        int n2 = a.C(parcel);
        long l = 0;
        String string = null;
        hg hg = null;
        int n3 = 0;
        block8 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block8;
                }
                case 1: {
                    hg = (hg)a.a(parcel, n4, hg.CREATOR);
                    continue block8;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block8;
                }
                case 2: {
                    l = a.i(parcel, n4);
                    continue block8;
                }
                case 3: {
                    n = a.g(parcel, n4);
                    continue block8;
                }
                case 4: {
                    string = a.o(parcel, n4);
                    continue block8;
                }
                case 5: 
            }
            he = (he)a.a(parcel, n4, he.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new hs(n3, hg, l, n, string, he);
    }
}

