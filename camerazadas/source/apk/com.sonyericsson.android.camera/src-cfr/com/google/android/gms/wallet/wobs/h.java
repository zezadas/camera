/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.wobs.g;

public class h
implements Parcelable.Creator<g> {
    static void a(g g, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, g.getVersionCode());
        b.c(parcel, 2, g.auD);
        b.a(parcel, 3, g.auE, false);
        b.a(parcel, 4, g.auF);
        b.a(parcel, 5, g.auG, false);
        b.a(parcel, 6, g.auH);
        b.c(parcel, 7, g.auI);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dJ(parcel);
    }

    public g dJ(Parcel parcel) {
        String string = null;
        int n = 0;
        int n2 = a.C(parcel);
        double d = 0.0;
        long l = 0;
        int n3 = -1;
        String string2 = null;
        int n4 = 0;
        block9 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block9;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block9;
                }
                case 2: {
                    n = a.g(parcel, n5);
                    continue block9;
                }
                case 3: {
                    string2 = a.o(parcel, n5);
                    continue block9;
                }
                case 4: {
                    d = a.m(parcel, n5);
                    continue block9;
                }
                case 5: {
                    string = a.o(parcel, n5);
                    continue block9;
                }
                case 6: {
                    l = a.i(parcel, n5);
                    continue block9;
                }
                case 7: 
            }
            n3 = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new g(n4, n, string2, d, string, l, n3);
    }

    public g[] fM(int n) {
        return new g[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fM(n);
    }
}

