/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.op;

public class oq
implements Parcelable.Creator<op> {
    static void a(op op, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, op.getVersionCode());
        b.a(parcel, 2, op.atO, false);
        b.a(parcel, 3, op.atP, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dC(parcel);
    }

    public op dC(Parcel parcel) {
        String[] arrstring = null;
        int n = a.C(parcel);
        int n2 = 0;
        byte[][] arrby = null;
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
                    arrstring = a.A(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            arrby = a.s(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new op(n2, arrstring, arrby);
    }

    public op[] fD(int n) {
        return new op[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fD(n);
    }
}

