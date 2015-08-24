/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.bj;

public class bk
implements Parcelable.Creator<bj> {
    static void a(bj bj, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, bj.versionCode);
        b.c(parcel, 2, bj.oH);
        b.c(parcel, 3, bj.backgroundColor);
        b.c(parcel, 4, bj.oI);
        b.c(parcel, 5, bj.oJ);
        b.c(parcel, 6, bj.oK);
        b.c(parcel, 7, bj.oL);
        b.c(parcel, 8, bj.oM);
        b.c(parcel, 9, bj.oN);
        b.a(parcel, 10, bj.oO, false);
        b.c(parcel, 11, bj.oP);
        b.a(parcel, 12, bj.oQ, false);
        b.c(parcel, 13, bj.oR);
        b.c(parcel, 14, bj.oS);
        b.a(parcel, 15, bj.oT, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.d(parcel);
    }

    public bj d(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        int n5 = 0;
        int n6 = 0;
        int n7 = 0;
        int n8 = 0;
        int n9 = 0;
        int n10 = 0;
        String string = null;
        int n11 = 0;
        String string2 = null;
        int n12 = 0;
        int n13 = 0;
        String string3 = null;
        block17 : while (parcel.dataPosition() < n) {
            int n14 = a.B(parcel);
            switch (a.aD(n14)) {
                default: {
                    a.b(parcel, n14);
                    continue block17;
                }
                case 1: {
                    n2 = a.g(parcel, n14);
                    continue block17;
                }
                case 2: {
                    n3 = a.g(parcel, n14);
                    continue block17;
                }
                case 3: {
                    n4 = a.g(parcel, n14);
                    continue block17;
                }
                case 4: {
                    n5 = a.g(parcel, n14);
                    continue block17;
                }
                case 5: {
                    n6 = a.g(parcel, n14);
                    continue block17;
                }
                case 6: {
                    n7 = a.g(parcel, n14);
                    continue block17;
                }
                case 7: {
                    n8 = a.g(parcel, n14);
                    continue block17;
                }
                case 8: {
                    n9 = a.g(parcel, n14);
                    continue block17;
                }
                case 9: {
                    n10 = a.g(parcel, n14);
                    continue block17;
                }
                case 10: {
                    string = a.o(parcel, n14);
                    continue block17;
                }
                case 11: {
                    n11 = a.g(parcel, n14);
                    continue block17;
                }
                case 12: {
                    string2 = a.o(parcel, n14);
                    continue block17;
                }
                case 13: {
                    n12 = a.g(parcel, n14);
                    continue block17;
                }
                case 14: {
                    n13 = a.g(parcel, n14);
                    continue block17;
                }
                case 15: 
            }
            string3 = a.o(parcel, n14);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new bj(n2, n3, n4, n5, n6, n7, n8, n9, n10, string, n11, string2, n12, n13, string3);
    }

    public bj[] h(int n) {
        return new bj[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.h(n);
    }
}

