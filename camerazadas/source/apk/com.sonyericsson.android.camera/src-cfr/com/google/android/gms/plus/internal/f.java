/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.plus.internal.PlusCommonExtras;

public class f
implements Parcelable.Creator<PlusCommonExtras> {
    static void a(PlusCommonExtras plusCommonExtras, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, plusCommonExtras.ne(), false);
        b.c(parcel, 1000, plusCommonExtras.getVersionCode());
        b.a(parcel, 2, plusCommonExtras.nf(), false);
        b.H(parcel, n);
    }

    public PlusCommonExtras cZ(Parcel parcel) {
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
                    string2 = a.o(parcel, n3);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new PlusCommonExtras(n2, string2, string);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cZ(parcel);
    }

    public PlusCommonExtras[] eR(int n) {
        return new PlusCommonExtras[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eR(n);
    }
}

