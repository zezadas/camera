/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nu;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class nv
implements Parcelable.Creator<nu> {
    static void a(nu nu, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        Set<Integer> set = nu.amc;
        if (set.contains(1)) {
            b.c(parcel, 1, nu.BR);
        }
        if (set.contains(2)) {
            b.a(parcel, 2, nu.amd, n, true);
        }
        if (set.contains(3)) {
            b.b(parcel, 3, nu.ame, true);
        }
        if (set.contains(4)) {
            b.a(parcel, 4, nu.amf, n, true);
        }
        if (set.contains(5)) {
            b.a(parcel, 5, nu.amg, true);
        }
        if (set.contains(6)) {
            b.a(parcel, 6, nu.amh, true);
        }
        if (set.contains(7)) {
            b.a(parcel, 7, nu.ami, true);
        }
        if (set.contains(8)) {
            b.c(parcel, 8, nu.amj, true);
        }
        if (set.contains(9)) {
            b.c(parcel, 9, nu.amk);
        }
        if (set.contains(10)) {
            b.c(parcel, 10, nu.aml, true);
        }
        if (set.contains(11)) {
            b.a(parcel, 11, nu.amm, n, true);
        }
        if (set.contains(12)) {
            b.c(parcel, 12, nu.amn, true);
        }
        if (set.contains(13)) {
            b.a(parcel, 13, nu.amo, true);
        }
        if (set.contains(14)) {
            b.a(parcel, 14, nu.amp, true);
        }
        if (set.contains(15)) {
            b.a(parcel, 15, nu.amq, n, true);
        }
        if (set.contains(17)) {
            b.a(parcel, 17, nu.ams, true);
        }
        if (set.contains(16)) {
            b.a(parcel, 16, nu.amr, true);
        }
        if (set.contains(19)) {
            b.c(parcel, 19, nu.amt, true);
        }
        if (set.contains(18)) {
            b.a(parcel, 18, nu.ol, true);
        }
        if (set.contains(21)) {
            b.a(parcel, 21, nu.amv, true);
        }
        if (set.contains(20)) {
            b.a(parcel, 20, nu.amu, true);
        }
        if (set.contains(23)) {
            b.a(parcel, 23, nu.Tr, true);
        }
        if (set.contains(22)) {
            b.a(parcel, 22, nu.amw, true);
        }
        if (set.contains(25)) {
            b.a(parcel, 25, nu.amy, true);
        }
        if (set.contains(24)) {
            b.a(parcel, 24, nu.amx, true);
        }
        if (set.contains(27)) {
            b.a(parcel, 27, nu.amA, true);
        }
        if (set.contains(26)) {
            b.a(parcel, 26, nu.amz, true);
        }
        if (set.contains(29)) {
            b.a(parcel, 29, nu.amC, n, true);
        }
        if (set.contains(28)) {
            b.a(parcel, 28, nu.amB, true);
        }
        if (set.contains(31)) {
            b.a(parcel, 31, nu.amE, true);
        }
        if (set.contains(30)) {
            b.a(parcel, 30, nu.amD, true);
        }
        if (set.contains(34)) {
            b.a(parcel, 34, nu.amG, n, true);
        }
        if (set.contains(32)) {
            b.a(parcel, 32, nu.BL, true);
        }
        if (set.contains(33)) {
            b.a(parcel, 33, nu.amF, true);
        }
        if (set.contains(38)) {
            b.a(parcel, 38, nu.ael);
        }
        if (set.contains(39)) {
            b.a(parcel, 39, nu.mName, true);
        }
        if (set.contains(36)) {
            b.a(parcel, 36, nu.aek);
        }
        if (set.contains(37)) {
            b.a(parcel, 37, nu.amH, n, true);
        }
        if (set.contains(42)) {
            b.a(parcel, 42, nu.amK, true);
        }
        if (set.contains(43)) {
            b.a(parcel, 43, nu.amL, true);
        }
        if (set.contains(40)) {
            b.a(parcel, 40, nu.amI, n, true);
        }
        if (set.contains(41)) {
            b.c(parcel, 41, nu.amJ, true);
        }
        if (set.contains(46)) {
            b.a(parcel, 46, nu.amO, n, true);
        }
        if (set.contains(47)) {
            b.a(parcel, 47, nu.amP, true);
        }
        if (set.contains(44)) {
            b.a(parcel, 44, nu.amM, true);
        }
        if (set.contains(45)) {
            b.a(parcel, 45, nu.amN, true);
        }
        if (set.contains(51)) {
            b.a(parcel, 51, nu.amT, true);
        }
        if (set.contains(50)) {
            b.a(parcel, 50, nu.amS, n, true);
        }
        if (set.contains(49)) {
            b.a(parcel, 49, nu.amR, true);
        }
        if (set.contains(48)) {
            b.a(parcel, 48, nu.amQ, true);
        }
        if (set.contains(55)) {
            b.a(parcel, 55, nu.amV, true);
        }
        if (set.contains(54)) {
            b.a(parcel, 54, nu.uR, true);
        }
        if (set.contains(53)) {
            b.a(parcel, 53, nu.uO, true);
        }
        if (set.contains(52)) {
            b.a(parcel, 52, nu.amU, true);
        }
        if (set.contains(56)) {
            b.a(parcel, 56, nu.amW, true);
        }
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.db(parcel);
    }

    public nu db(Parcel parcel) {
        int n = a.C(parcel);
        HashSet<Integer> hashSet = new HashSet<Integer>();
        int n2 = 0;
        nu nu = null;
        ArrayList<String> arrayList = null;
        nu nu2 = null;
        String string = null;
        String string2 = null;
        String string3 = null;
        ArrayList<nu> arrayList2 = null;
        int n3 = 0;
        ArrayList<nu> arrayList3 = null;
        nu nu3 = null;
        ArrayList<nu> arrayList4 = null;
        String string4 = null;
        String string5 = null;
        nu nu4 = null;
        String string6 = null;
        String string7 = null;
        String string8 = null;
        ArrayList<nu> arrayList5 = null;
        String string9 = null;
        String string10 = null;
        String string11 = null;
        String string12 = null;
        String string13 = null;
        String string14 = null;
        String string15 = null;
        String string16 = null;
        String string17 = null;
        nu nu5 = null;
        String string18 = null;
        String string19 = null;
        String string20 = null;
        String string21 = null;
        nu nu6 = null;
        double d = 0.0;
        nu nu7 = null;
        double d2 = 0.0;
        String string22 = null;
        nu nu8 = null;
        ArrayList<nu> arrayList6 = null;
        String string23 = null;
        String string24 = null;
        String string25 = null;
        String string26 = null;
        nu nu9 = null;
        String string27 = null;
        String string28 = null;
        String string29 = null;
        nu nu10 = null;
        String string30 = null;
        String string31 = null;
        String string32 = null;
        String string33 = null;
        String string34 = null;
        String string35 = null;
        block57 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block57;
                }
                case 1: {
                    n2 = a.g(parcel, n4);
                    hashSet.add(1);
                    continue block57;
                }
                case 2: {
                    nu = (nu)a.a(parcel, n4, nu.CREATOR);
                    hashSet.add(2);
                    continue block57;
                }
                case 3: {
                    arrayList = a.C(parcel, n4);
                    hashSet.add(3);
                    continue block57;
                }
                case 4: {
                    nu2 = (nu)a.a(parcel, n4, nu.CREATOR);
                    hashSet.add(4);
                    continue block57;
                }
                case 5: {
                    string = a.o(parcel, n4);
                    hashSet.add(5);
                    continue block57;
                }
                case 6: {
                    string2 = a.o(parcel, n4);
                    hashSet.add(6);
                    continue block57;
                }
                case 7: {
                    string3 = a.o(parcel, n4);
                    hashSet.add(7);
                    continue block57;
                }
                case 8: {
                    arrayList2 = a.c(parcel, n4, nu.CREATOR);
                    hashSet.add(8);
                    continue block57;
                }
                case 9: {
                    n3 = a.g(parcel, n4);
                    hashSet.add(9);
                    continue block57;
                }
                case 10: {
                    arrayList3 = a.c(parcel, n4, nu.CREATOR);
                    hashSet.add(10);
                    continue block57;
                }
                case 11: {
                    nu3 = (nu)a.a(parcel, n4, nu.CREATOR);
                    hashSet.add(11);
                    continue block57;
                }
                case 12: {
                    arrayList4 = a.c(parcel, n4, nu.CREATOR);
                    hashSet.add(12);
                    continue block57;
                }
                case 13: {
                    string4 = a.o(parcel, n4);
                    hashSet.add(13);
                    continue block57;
                }
                case 14: {
                    string5 = a.o(parcel, n4);
                    hashSet.add(14);
                    continue block57;
                }
                case 15: {
                    nu4 = (nu)a.a(parcel, n4, nu.CREATOR);
                    hashSet.add(15);
                    continue block57;
                }
                case 17: {
                    string7 = a.o(parcel, n4);
                    hashSet.add(17);
                    continue block57;
                }
                case 16: {
                    string6 = a.o(parcel, n4);
                    hashSet.add(16);
                    continue block57;
                }
                case 19: {
                    arrayList5 = a.c(parcel, n4, nu.CREATOR);
                    hashSet.add(19);
                    continue block57;
                }
                case 18: {
                    string8 = a.o(parcel, n4);
                    hashSet.add(18);
                    continue block57;
                }
                case 21: {
                    string10 = a.o(parcel, n4);
                    hashSet.add(21);
                    continue block57;
                }
                case 20: {
                    string9 = a.o(parcel, n4);
                    hashSet.add(20);
                    continue block57;
                }
                case 23: {
                    string12 = a.o(parcel, n4);
                    hashSet.add(23);
                    continue block57;
                }
                case 22: {
                    string11 = a.o(parcel, n4);
                    hashSet.add(22);
                    continue block57;
                }
                case 25: {
                    string14 = a.o(parcel, n4);
                    hashSet.add(25);
                    continue block57;
                }
                case 24: {
                    string13 = a.o(parcel, n4);
                    hashSet.add(24);
                    continue block57;
                }
                case 27: {
                    string16 = a.o(parcel, n4);
                    hashSet.add(27);
                    continue block57;
                }
                case 26: {
                    string15 = a.o(parcel, n4);
                    hashSet.add(26);
                    continue block57;
                }
                case 29: {
                    nu5 = (nu)a.a(parcel, n4, nu.CREATOR);
                    hashSet.add(29);
                    continue block57;
                }
                case 28: {
                    string17 = a.o(parcel, n4);
                    hashSet.add(28);
                    continue block57;
                }
                case 31: {
                    string19 = a.o(parcel, n4);
                    hashSet.add(31);
                    continue block57;
                }
                case 30: {
                    string18 = a.o(parcel, n4);
                    hashSet.add(30);
                    continue block57;
                }
                case 34: {
                    nu6 = (nu)a.a(parcel, n4, nu.CREATOR);
                    hashSet.add(34);
                    continue block57;
                }
                case 32: {
                    string20 = a.o(parcel, n4);
                    hashSet.add(32);
                    continue block57;
                }
                case 33: {
                    string21 = a.o(parcel, n4);
                    hashSet.add(33);
                    continue block57;
                }
                case 38: {
                    d2 = a.m(parcel, n4);
                    hashSet.add(38);
                    continue block57;
                }
                case 39: {
                    string22 = a.o(parcel, n4);
                    hashSet.add(39);
                    continue block57;
                }
                case 36: {
                    d = a.m(parcel, n4);
                    hashSet.add(36);
                    continue block57;
                }
                case 37: {
                    nu7 = (nu)a.a(parcel, n4, nu.CREATOR);
                    hashSet.add(37);
                    continue block57;
                }
                case 42: {
                    string23 = a.o(parcel, n4);
                    hashSet.add(42);
                    continue block57;
                }
                case 43: {
                    string24 = a.o(parcel, n4);
                    hashSet.add(43);
                    continue block57;
                }
                case 40: {
                    nu8 = (nu)a.a(parcel, n4, nu.CREATOR);
                    hashSet.add(40);
                    continue block57;
                }
                case 41: {
                    arrayList6 = a.c(parcel, n4, nu.CREATOR);
                    hashSet.add(41);
                    continue block57;
                }
                case 46: {
                    nu9 = (nu)a.a(parcel, n4, nu.CREATOR);
                    hashSet.add(46);
                    continue block57;
                }
                case 47: {
                    string27 = a.o(parcel, n4);
                    hashSet.add(47);
                    continue block57;
                }
                case 44: {
                    string25 = a.o(parcel, n4);
                    hashSet.add(44);
                    continue block57;
                }
                case 45: {
                    string26 = a.o(parcel, n4);
                    hashSet.add(45);
                    continue block57;
                }
                case 51: {
                    string30 = a.o(parcel, n4);
                    hashSet.add(51);
                    continue block57;
                }
                case 50: {
                    nu10 = (nu)a.a(parcel, n4, nu.CREATOR);
                    hashSet.add(50);
                    continue block57;
                }
                case 49: {
                    string29 = a.o(parcel, n4);
                    hashSet.add(49);
                    continue block57;
                }
                case 48: {
                    string28 = a.o(parcel, n4);
                    hashSet.add(48);
                    continue block57;
                }
                case 55: {
                    string34 = a.o(parcel, n4);
                    hashSet.add(55);
                    continue block57;
                }
                case 54: {
                    string33 = a.o(parcel, n4);
                    hashSet.add(54);
                    continue block57;
                }
                case 53: {
                    string32 = a.o(parcel, n4);
                    hashSet.add(53);
                    continue block57;
                }
                case 52: {
                    string31 = a.o(parcel, n4);
                    hashSet.add(52);
                    continue block57;
                }
                case 56: 
            }
            string35 = a.o(parcel, n4);
            hashSet.add(56);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new nu(hashSet, n2, nu, arrayList, nu2, string, string2, string3, arrayList2, n3, arrayList3, nu3, arrayList4, string4, string5, nu4, string6, string7, string8, arrayList5, string9, string10, string11, string12, string13, string14, string15, string16, string17, nu5, string18, string19, string20, string21, nu6, d, nu7, d2, string22, nu8, arrayList6, string23, string24, string25, string26, nu9, string27, string28, string29, nu10, string30, string31, string32, string33, string34, string35);
    }

    public nu[] eT(int n) {
        return new nu[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eT(n);
    }
}

