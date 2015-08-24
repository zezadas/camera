/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nz;
import java.util.HashSet;
import java.util.Set;

public class ob
implements Parcelable.Creator<nz.a> {
    static void a(nz.a a, Parcel parcel, int n) {
        n = b.D(parcel);
        Set<Integer> set = a.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, a.BR);
        }
        if (set.contains(2)) {
            b.c(parcel, 2, a.ant);
        }
        if (set.contains(3)) {
            b.c(parcel, 3, a.anu);
        }
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.de(parcel);
    }

    public nz.a de(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        int n3 = 0;
        int n4 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block5;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    hashSet.add(1);
                    continue block5;
                }
                case 2: {
                    n3 = a.g(parcel, n5);
                    hashSet.add(2);
                    continue block5;
                }
                case 3: 
            }
            n = a.g(parcel, n5);
            hashSet.add(3);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new nz.a(hashSet, n4, n3, n);
    }

    public nz.a[] eW(int n) {
        return new nz.a[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eW(n);
    }
}

