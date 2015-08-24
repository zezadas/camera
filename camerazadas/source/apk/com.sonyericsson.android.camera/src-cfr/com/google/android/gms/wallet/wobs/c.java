/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.wallet.wobs.b;

public class c
implements Parcelable.Creator<b> {
    static void a(b b, Parcel parcel, int n) {
        n = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, b.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b.label, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, b.value, false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dH(parcel);
    }

    public b dH(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string2 = null;
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
                    string2 = a.o(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new b(n2, string2, string);
    }

    public b[] fK(int n) {
        return new b[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fK(n);
    }
}

