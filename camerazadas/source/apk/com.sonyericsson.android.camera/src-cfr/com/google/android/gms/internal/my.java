/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.mx;

public class my
implements Parcelable.Creator<mx> {
    static void a(mx mx, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, mx.aij, false);
        b.c(parcel, 1000, mx.versionCode);
        b.a(parcel, 2, mx.aik, false);
        b.a(parcel, 3, mx.Dv, false);
        b.H(parcel, n);
    }

    public mx cF(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string2 = null;
        String string3 = null;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    string3 = a.o(parcel, n3);
                    continue block6;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    string2 = a.o(parcel, n3);
                    continue block6;
                }
                case 3: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new mx(n2, string3, string2, string);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cF(parcel);
    }

    public mx[] ev(int n) {
        return new mx[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ev(n);
    }
}

