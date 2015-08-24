/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.fk;
import java.util.ArrayList;
import java.util.List;

public class fl
implements Parcelable.Creator<fk> {
    static void a(fk fk, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, fk.versionCode);
        b.a(parcel, 2, fk.rP, false);
        b.a(parcel, 3, fk.tG, false);
        b.b(parcel, 4, fk.qf, false);
        b.c(parcel, 5, fk.errorCode);
        b.b(parcel, 6, fk.qg, false);
        b.a(parcel, 7, fk.tH);
        b.a(parcel, 8, fk.tI);
        b.a(parcel, 9, fk.tJ);
        b.b(parcel, 10, fk.tK, false);
        b.a(parcel, 11, fk.qj);
        b.c(parcel, 12, fk.orientation);
        b.a(parcel, 13, fk.tL, false);
        b.a(parcel, 14, fk.tM);
        b.a(parcel, 15, fk.tN, false);
        b.a(parcel, 19, fk.tP, false);
        b.a(parcel, 18, fk.tO);
        b.a(parcel, 21, fk.tQ, false);
        b.a(parcel, 23, fk.tS);
        b.a(parcel, 22, fk.tR);
        b.a(parcel, 25, fk.tT);
        b.a(parcel, 24, fk.tF);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.i(parcel);
    }

    public fk i(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        String string2 = null;
        ArrayList<String> arrayList = null;
        int n3 = 0;
        ArrayList<String> arrayList2 = null;
        long l = 0;
        boolean bl = false;
        long l2 = 0;
        ArrayList<String> arrayList3 = null;
        long l3 = 0;
        int n4 = 0;
        String string3 = null;
        long l4 = 0;
        String string4 = null;
        boolean bl2 = false;
        String string5 = null;
        String string6 = null;
        boolean bl3 = false;
        boolean bl4 = false;
        boolean bl5 = false;
        boolean bl6 = false;
        block24 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block24;
                }
                case 1: {
                    n2 = a.g(parcel, n5);
                    continue block24;
                }
                case 2: {
                    string = a.o(parcel, n5);
                    continue block24;
                }
                case 3: {
                    string2 = a.o(parcel, n5);
                    continue block24;
                }
                case 4: {
                    arrayList = a.C(parcel, n5);
                    continue block24;
                }
                case 5: {
                    n3 = a.g(parcel, n5);
                    continue block24;
                }
                case 6: {
                    arrayList2 = a.C(parcel, n5);
                    continue block24;
                }
                case 7: {
                    l = a.i(parcel, n5);
                    continue block24;
                }
                case 8: {
                    bl = a.c(parcel, n5);
                    continue block24;
                }
                case 9: {
                    l2 = a.i(parcel, n5);
                    continue block24;
                }
                case 10: {
                    arrayList3 = a.C(parcel, n5);
                    continue block24;
                }
                case 11: {
                    l3 = a.i(parcel, n5);
                    continue block24;
                }
                case 12: {
                    n4 = a.g(parcel, n5);
                    continue block24;
                }
                case 13: {
                    string3 = a.o(parcel, n5);
                    continue block24;
                }
                case 14: {
                    l4 = a.i(parcel, n5);
                    continue block24;
                }
                case 15: {
                    string4 = a.o(parcel, n5);
                    continue block24;
                }
                case 19: {
                    string5 = a.o(parcel, n5);
                    continue block24;
                }
                case 18: {
                    bl2 = a.c(parcel, n5);
                    continue block24;
                }
                case 21: {
                    string6 = a.o(parcel, n5);
                    continue block24;
                }
                case 23: {
                    bl4 = a.c(parcel, n5);
                    continue block24;
                }
                case 22: {
                    bl3 = a.c(parcel, n5);
                    continue block24;
                }
                case 25: {
                    bl6 = a.c(parcel, n5);
                    continue block24;
                }
                case 24: 
            }
            bl5 = a.c(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new fk(n2, string, string2, arrayList, n3, arrayList2, l, bl, l2, arrayList3, l3, n4, string3, l4, string4, bl2, string5, string6, bl3, bl4, bl5, bl6);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.q(n);
    }

    public fk[] q(int n) {
        return new fk[n];
    }
}

