/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.hk;

public class hl
implements Parcelable.Creator<hk> {
    static void a(hk hk, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, hk.id);
        b.c(parcel, 1000, hk.BR);
        b.a(parcel, 2, hk.Ci, false);
        b.H(parcel, n);
    }

    public hk[] L(int n) {
        return new hk[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.o(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.L(n);
    }

    public hk o(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        Bundle bundle = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n = a.g(parcel, n4);
                    continue block5;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: 
            }
            bundle = a.q(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new hk(n3, n, bundle);
    }
}

