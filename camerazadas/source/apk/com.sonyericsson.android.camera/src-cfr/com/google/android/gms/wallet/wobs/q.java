/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.wobs.l;
import com.google.android.gms.wallet.wobs.n;
import com.google.android.gms.wallet.wobs.p;

public class q
implements Parcelable.Creator<p> {
    static void a(p p, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, p.getVersionCode());
        b.a(parcel, 2, p.auJ, false);
        b.a(parcel, 3, p.tG, false);
        b.a(parcel, 4, p.auN, n, false);
        b.a(parcel, 5, p.auO, n, false);
        b.a(parcel, 6, p.auP, n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dO(parcel);
    }

    public p dO(Parcel parcel) {
        n n = null;
        int n2 = a.C(parcel);
        int n3 = 0;
        n n4 = null;
        l l = null;
        String string = null;
        String string2 = null;
        block8 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block8;
                }
                case 1: {
                    n3 = a.g(parcel, n5);
                    continue block8;
                }
                case 2: {
                    string2 = a.o(parcel, n5);
                    continue block8;
                }
                case 3: {
                    string = a.o(parcel, n5);
                    continue block8;
                }
                case 4: {
                    l = a.a(parcel, n5, l.CREATOR);
                    continue block8;
                }
                case 5: {
                    n4 = a.a(parcel, n5, n.CREATOR);
                    continue block8;
                }
                case 6: 
            }
            n = a.a(parcel, n5, n.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new p(n3, string2, string, l, n4, n);
    }

    public p[] fR(int n) {
        return new p[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fR(n);
    }
}

