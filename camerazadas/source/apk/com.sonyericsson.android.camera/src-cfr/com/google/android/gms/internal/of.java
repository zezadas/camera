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

public class of
implements Parcelable.Creator<nz.c> {
    static void a(nz.c c, Parcel parcel, int n) {
        n = b.D(parcel);
        Set<Integer> set = c.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, c.BR);
        }
        if (set.contains(2)) {
            b.a(parcel, 2, c.uR, true);
        }
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.di(parcel);
    }

    public nz.c di(Parcel parcel) {
        int n = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        int n2 = 0;
        String string = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    hashSet.add(1);
                    continue block4;
                }
                case 2: 
            }
            string = a.o(parcel, n3);
            hashSet.add(2);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new nz.c(hashSet, n2, string);
    }

    public nz.c[] fa(int n) {
        return new nz.c[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fa(n);
    }
}

