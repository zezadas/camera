/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.fitness.data.a;

public class b
implements Parcelable.Creator<a> {
    static void a(a a, Parcel parcel, int n) {
        n = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, a.getPackageName(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1000, a.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, a.getVersion(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, a.iz(), false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n);
    }

    public a bi(Parcel parcel) {
        String string = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        String string2 = null;
        String string3 = null;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    string3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block6;
                }
                case 1000: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    string2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block6;
                }
                case 3: 
            }
            string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new a(n2, string3, string2, string);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bi(parcel);
    }

    public a[] cw(int n) {
        return new a[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cw(n);
    }
}

