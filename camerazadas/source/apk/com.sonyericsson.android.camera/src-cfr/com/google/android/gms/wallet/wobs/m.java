/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.wobs.l;

public class m
implements Parcelable.Creator<l> {
    static void a(l l, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, l.getVersionCode());
        b.a(parcel, 2, l.auK);
        b.a(parcel, 3, l.auL);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dM(parcel);
    }

    public l dM(Parcel parcel) {
        long l = 0;
        int n = a.C(parcel);
        int n2 = 0;
        long l2 = 0;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: {
                    l2 = a.i(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            l = a.i(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new l(n2, l2, l);
    }

    public l[] fP(int n) {
        return new l[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fP(n);
    }
}

