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

public class og
implements Parcelable.Creator<nz.d> {
    static void a(nz.d d, Parcel parcel, int n) {
        n = b.D(parcel);
        Set<Integer> set = d.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, d.BR);
        }
        if (set.contains(2)) {
            b.a(parcel, 2, d.amA, true);
        }
        if (set.contains(3)) {
            b.a(parcel, 3, d.anA, true);
        }
        if (set.contains(4)) {
            b.a(parcel, 4, d.amD, true);
        }
        if (set.contains(5)) {
            b.a(parcel, 5, d.anB, true);
        }
        if (set.contains(6)) {
            b.a(parcel, 6, d.anC, true);
        }
        if (set.contains(7)) {
            b.a(parcel, 7, d.anD, true);
        }
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dj(parcel);
    }

    public nz.d dj(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        int n2 = 0;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        String string6 = null;
        block9 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block9;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    hashSet.add(1);
                    continue block9;
                }
                case 2: {
                    string6 = a.o(parcel, n3);
                    hashSet.add(2);
                    continue block9;
                }
                case 3: {
                    string5 = a.o(parcel, n3);
                    hashSet.add(3);
                    continue block9;
                }
                case 4: {
                    string4 = a.o(parcel, n3);
                    hashSet.add(4);
                    continue block9;
                }
                case 5: {
                    string3 = a.o(parcel, n3);
                    hashSet.add(5);
                    continue block9;
                }
                case 6: {
                    string2 = a.o(parcel, n3);
                    hashSet.add(6);
                    continue block9;
                }
                case 7: 
            }
            string = a.o(parcel, n3);
            hashSet.add(7);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new nz.d(hashSet, n2, string6, string5, string4, string3, string2, string);
    }

    public nz.d[] fb(int n) {
        return new nz.d[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fb(n);
    }
}

