/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nu;
import com.google.android.gms.internal.nv;
import com.google.android.gms.internal.nw;
import java.util.HashSet;
import java.util.Set;

public class nx
implements Parcelable.Creator<nw> {
    static void a(nw nw, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        Set<Integer> set = nw.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, nw.BR);
        }
        if (set.contains(2)) {
            b.a(parcel, 2, nw.BL, true);
        }
        if (set.contains(4)) {
            b.a(parcel, 4, nw.amX, n, true);
        }
        if (set.contains(5)) {
            b.a(parcel, 5, nw.amP, true);
        }
        if (set.contains(6)) {
            b.a(parcel, 6, nw.amY, n, true);
        }
        if (set.contains(7)) {
            b.a(parcel, 7, nw.uO, true);
        }
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dc(parcel);
    }

    public nw dc(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        int n2 = 0;
        nu nu = null;
        String string2 = null;
        nu nu2 = null;
        String string3 = null;
        block8 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block8;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    hashSet.add(1);
                    continue block8;
                }
                case 2: {
                    string3 = a.o(parcel, n3);
                    hashSet.add(2);
                    continue block8;
                }
                case 4: {
                    nu2 = (nu)a.a(parcel, n3, nu.CREATOR);
                    hashSet.add(4);
                    continue block8;
                }
                case 5: {
                    string2 = a.o(parcel, n3);
                    hashSet.add(5);
                    continue block8;
                }
                case 6: {
                    nu = (nu)a.a(parcel, n3, nu.CREATOR);
                    hashSet.add(6);
                    continue block8;
                }
                case 7: 
            }
            string = a.o(parcel, n3);
            hashSet.add(7);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new nw(hashSet, n2, string3, nu2, string2, nu, string);
    }

    public nw[] eU(int n) {
        return new nw[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eU(n);
    }
}

