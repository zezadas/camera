/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.x;

public class y
implements Parcelable.Creator<x> {
    static void a(x x, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, x.versionCode);
        b.a(parcel, 2, x.lX);
        b.a(parcel, 3, x.mh);
        b.H(parcel, n);
    }

    public x a(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        boolean bl2 = false;
        int n2 = 0;
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
                    bl2 = a.c(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new x(n2, bl2, bl);
    }

    public x[] b(int n) {
        return new x[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.a(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.b(n);
    }
}

