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

public class oi
implements Parcelable.Creator<nz.g> {
    static void a(nz.g g, Parcel parcel, int n) {
        n = b.D(parcel);
        Set<Integer> set = g.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, g.BR);
        }
        if (set.contains(2)) {
            b.a(parcel, 2, g.anG);
        }
        if (set.contains(3)) {
            b.a(parcel, 3, g.mValue, true);
        }
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dl(parcel);
    }

    public nz.g dl(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        String string = null;
        int n2 = 0;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    hashSet.add(1);
                    continue block5;
                }
                case 2: {
                    bl = a.c(parcel, n3);
                    hashSet.add(2);
                    continue block5;
                }
                case 3: 
            }
            string = a.o(parcel, n3);
            hashSet.add(3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new nz.g(hashSet, n2, bl, string);
    }

    public nz.g[] fd(int n) {
        return new nz.g[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fd(n);
    }
}

