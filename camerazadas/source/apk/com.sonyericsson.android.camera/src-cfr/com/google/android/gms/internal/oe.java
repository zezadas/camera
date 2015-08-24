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

public class oe
implements Parcelable.Creator<nz.b.b> {
    static void a(nz.b.b b, Parcel parcel, int n) {
        n = b.D(parcel);
        Set<Integer> set = b.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, b.BR);
        }
        if (set.contains(2)) {
            b.c(parcel, 2, b.lg);
        }
        if (set.contains(3)) {
            b.a(parcel, 3, b.uR, true);
        }
        if (set.contains(4)) {
            b.c(parcel, 4, b.lf);
        }
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dh(parcel);
    }

    public nz.b.b dh(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        String string = null;
        int n3 = 0;
        int n4 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block6;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    hashSet.add(1);
                    continue block6;
                }
                case 2: {
                    n3 = a.g(parcel, n5);
                    hashSet.add(2);
                    continue block6;
                }
                case 3: {
                    string = a.o(parcel, n5);
                    hashSet.add(3);
                    continue block6;
                }
                case 4: 
            }
            n = a.g(parcel, n5);
            hashSet.add(4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new nz.b.b(hashSet, n4, n3, string, n);
    }

    public nz.b.b[] eZ(int n) {
        return new nz.b.b[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eZ(n);
    }
}

