/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.jr;
import com.google.android.gms.wallet.wobs.b;
import com.google.android.gms.wallet.wobs.d;
import java.util.ArrayList;

public class e
implements Parcelable.Creator<d> {
    static void a(d d, Parcel parcel, int n) {
        n = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, d.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, d.auz, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, d.auA, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, d.auB, false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dI(parcel);
    }

    public d dI(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList arrayList = jr.hz();
        String string2 = null;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    string2 = a.o(parcel, n3);
                    continue block6;
                }
                case 3: {
                    string = a.o(parcel, n3);
                    continue block6;
                }
                case 4: 
            }
            arrayList = a.c(parcel, n3, b.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new d(n2, string2, string, arrayList);
    }

    public d[] fL(int n) {
        return new d[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fL(n);
    }
}

