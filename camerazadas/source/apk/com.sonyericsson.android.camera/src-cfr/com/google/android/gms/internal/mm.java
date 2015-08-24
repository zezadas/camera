/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ml;

public class mm
implements Parcelable.Creator<ml> {
    static void a(ml ml, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, ml.BR);
        b.a(parcel, 2, ml.mk(), false);
        b.a(parcel, 3, ml.getTag(), false);
        b.H(parcel, n);
    }

    public ml cA(Parcel parcel) {
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
        return new ml(n2, string2, string);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cA(parcel);
    }

    public ml[] eq(int n) {
        return new ml[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eq(n);
    }
}

