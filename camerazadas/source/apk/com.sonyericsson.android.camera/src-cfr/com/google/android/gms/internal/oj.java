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

public class oj
implements Parcelable.Creator<nz.h> {
    static void a(nz.h h, Parcel parcel, int n) {
        n = b.D(parcel);
        Set<Integer> set = h.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, h.BR);
        }
        if (set.contains(3)) {
            b.c(parcel, 3, h.nD());
        }
        if (set.contains(4)) {
            b.a(parcel, 4, h.mValue, true);
        }
        if (set.contains(5)) {
            b.a(parcel, 5, h.anH, true);
        }
        if (set.contains(6)) {
            b.c(parcel, 6, h.FD);
        }
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dm(parcel);
    }

    public nz.h dm(Parcel parcel) {
        String string = null;
        int n = 0;
        int n2 = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        int n3 = 0;
        String string2 = null;
        int n4 = 0;
        block7 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block7;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    hashSet.add(1);
                    continue block7;
                }
                case 3: {
                    n = a.g(parcel, n5);
                    hashSet.add(3);
                    continue block7;
                }
                case 4: {
                    string = a.o(parcel, n5);
                    hashSet.add(4);
                    continue block7;
                }
                case 5: {
                    string2 = a.o(parcel, n5);
                    hashSet.add(5);
                    continue block7;
                }
                case 6: 
            }
            n3 = a.g(parcel, n5);
            hashSet.add(6);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new nz.h(hashSet, n4, string2, n3, string, n);
    }

    public nz.h[] fe(int n) {
        return new nz.h[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fe(n);
    }
}

