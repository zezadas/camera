/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nz;
import com.google.android.gms.internal.od;
import com.google.android.gms.internal.oe;
import java.util.HashSet;
import java.util.Set;

public class oc
implements Parcelable.Creator<nz.b> {
    static void a(nz.b b, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        Set<Integer> set = b.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, b.BR);
        }
        if (set.contains(2)) {
            b.a(parcel, 2, b.anv, n, true);
        }
        if (set.contains(3)) {
            b.a(parcel, 3, b.anw, n, true);
        }
        if (set.contains(4)) {
            b.c(parcel, 4, b.anx);
        }
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.df(parcel);
    }

    public nz.b df(Parcel parcel) {
        nz.b.b b = null;
        int n = 0;
        int n2 = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        nz.b.a a = null;
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
                    hashSet.add(1);
                    continue block6;
                }
                case 2: {
                    a = (nz.b.a)a.a(parcel, n4, nz.b.a.CREATOR);
                    hashSet.add(2);
                    continue block6;
                }
                case 3: {
                    b = (nz.b.b)a.a(parcel, n4, nz.b.b.CREATOR);
                    hashSet.add(3);
                    continue block6;
                }
                case 4: 
            }
            n = a.g(parcel, n4);
            hashSet.add(4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new nz.b(hashSet, n3, a, b, n);
    }

    public nz.b[] eX(int n) {
        return new nz.b[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eX(n);
    }
}

