/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nz;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.oc;
import com.google.android.gms.internal.of;
import com.google.android.gms.internal.og;
import com.google.android.gms.internal.oh;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.oj;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class oa
implements Parcelable.Creator<nz> {
    static void a(nz nz, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        Set<Integer> set = nz.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, nz.BR);
        }
        if (set.contains(2)) {
            b.a(parcel, 2, nz.ana, true);
        }
        if (set.contains(3)) {
            b.a(parcel, 3, nz.anb, n, true);
        }
        if (set.contains(4)) {
            b.a(parcel, 4, nz.anc, true);
        }
        if (set.contains(5)) {
            b.a(parcel, 5, nz.and, true);
        }
        if (set.contains(6)) {
            b.c(parcel, 6, nz.ane);
        }
        if (set.contains(7)) {
            b.a(parcel, 7, nz.anf, n, true);
        }
        if (set.contains(8)) {
            b.a(parcel, 8, nz.ang, true);
        }
        if (set.contains(9)) {
            b.a(parcel, 9, nz.NH, true);
        }
        if (set.contains(12)) {
            b.c(parcel, 12, nz.om);
        }
        if (set.contains(14)) {
            b.a(parcel, 14, nz.BL, true);
        }
        if (set.contains(15)) {
            b.a(parcel, 15, nz.anh, n, true);
        }
        if (set.contains(16)) {
            b.a(parcel, 16, nz.ani);
        }
        if (set.contains(19)) {
            b.a(parcel, 19, nz.anj, n, true);
        }
        if (set.contains(18)) {
            b.a(parcel, 18, nz.Fc, true);
        }
        if (set.contains(21)) {
            b.c(parcel, 21, nz.anl);
        }
        if (set.contains(20)) {
            b.a(parcel, 20, nz.ank, true);
        }
        if (set.contains(23)) {
            b.c(parcel, 23, nz.ann, true);
        }
        if (set.contains(22)) {
            b.c(parcel, 22, nz.anm, true);
        }
        if (set.contains(25)) {
            b.c(parcel, 25, nz.anp);
        }
        if (set.contains(24)) {
            b.c(parcel, 24, nz.ano);
        }
        if (set.contains(27)) {
            b.a(parcel, 27, nz.uR, true);
        }
        if (set.contains(26)) {
            b.a(parcel, 26, nz.anq, true);
        }
        if (set.contains(29)) {
            b.a(parcel, 29, nz.ans);
        }
        if (set.contains(28)) {
            b.c(parcel, 28, nz.anr, true);
        }
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dd(parcel);
    }

    public nz dd(Parcel parcel) {
        int n = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        int n2 = 0;
        String string = null;
        nz.a a = null;
        String string2 = null;
        String string3 = null;
        int n3 = 0;
        nz.b b = null;
        String string4 = null;
        String string5 = null;
        int n4 = 0;
        String string6 = null;
        nz.c c = null;
        boolean bl = false;
        String string7 = null;
        nz.d d = null;
        String string8 = null;
        int n5 = 0;
        ArrayList<nz.f> arrayList = null;
        ArrayList<nz.g> arrayList2 = null;
        int n6 = 0;
        int n7 = 0;
        String string9 = null;
        String string10 = null;
        ArrayList<nz.h> arrayList3 = null;
        boolean bl2 = false;
        block27 : while (parcel.dataPosition() < n) {
            int n8 = a.B(parcel);
            switch (a.aD(n8)) {
                default: {
                    a.b(parcel, n8);
                    continue block27;
                }
                case 1: {
                    n2 = a.g(parcel, n8);
                    hashSet.add(1);
                    continue block27;
                }
                case 2: {
                    string = a.o(parcel, n8);
                    hashSet.add(2);
                    continue block27;
                }
                case 3: {
                    a = (nz.a)a.a(parcel, n8, nz.a.CREATOR);
                    hashSet.add(3);
                    continue block27;
                }
                case 4: {
                    string2 = a.o(parcel, n8);
                    hashSet.add(4);
                    continue block27;
                }
                case 5: {
                    string3 = a.o(parcel, n8);
                    hashSet.add(5);
                    continue block27;
                }
                case 6: {
                    n3 = a.g(parcel, n8);
                    hashSet.add(6);
                    continue block27;
                }
                case 7: {
                    b = (nz.b)a.a(parcel, n8, nz.b.CREATOR);
                    hashSet.add(7);
                    continue block27;
                }
                case 8: {
                    string4 = a.o(parcel, n8);
                    hashSet.add(8);
                    continue block27;
                }
                case 9: {
                    string5 = a.o(parcel, n8);
                    hashSet.add(9);
                    continue block27;
                }
                case 12: {
                    n4 = a.g(parcel, n8);
                    hashSet.add(12);
                    continue block27;
                }
                case 14: {
                    string6 = a.o(parcel, n8);
                    hashSet.add(14);
                    continue block27;
                }
                case 15: {
                    c = (nz.c)a.a(parcel, n8, nz.c.CREATOR);
                    hashSet.add(15);
                    continue block27;
                }
                case 16: {
                    bl = a.c(parcel, n8);
                    hashSet.add(16);
                    continue block27;
                }
                case 19: {
                    d = (nz.d)a.a(parcel, n8, nz.d.CREATOR);
                    hashSet.add(19);
                    continue block27;
                }
                case 18: {
                    string7 = a.o(parcel, n8);
                    hashSet.add(18);
                    continue block27;
                }
                case 21: {
                    n5 = a.g(parcel, n8);
                    hashSet.add(21);
                    continue block27;
                }
                case 20: {
                    string8 = a.o(parcel, n8);
                    hashSet.add(20);
                    continue block27;
                }
                case 23: {
                    arrayList2 = a.c(parcel, n8, nz.g.CREATOR);
                    hashSet.add(23);
                    continue block27;
                }
                case 22: {
                    arrayList = a.c(parcel, n8, nz.f.CREATOR);
                    hashSet.add(22);
                    continue block27;
                }
                case 25: {
                    n7 = a.g(parcel, n8);
                    hashSet.add(25);
                    continue block27;
                }
                case 24: {
                    n6 = a.g(parcel, n8);
                    hashSet.add(24);
                    continue block27;
                }
                case 27: {
                    string10 = a.o(parcel, n8);
                    hashSet.add(27);
                    continue block27;
                }
                case 26: {
                    string9 = a.o(parcel, n8);
                    hashSet.add(26);
                    continue block27;
                }
                case 29: {
                    bl2 = a.c(parcel, n8);
                    hashSet.add(29);
                    continue block27;
                }
                case 28: 
            }
            arrayList3 = a.c(parcel, n8, nz.h.CREATOR);
            hashSet.add(28);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new nz(hashSet, n2, string, a, string2, string3, n3, b, string4, string5, n4, string6, c, bl, string7, d, string8, n5, arrayList, arrayList2, n6, n7, string9, string10, arrayList3, bl2);
    }

    public nz[] eV(int n) {
        return new nz[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eV(n);
    }
}

