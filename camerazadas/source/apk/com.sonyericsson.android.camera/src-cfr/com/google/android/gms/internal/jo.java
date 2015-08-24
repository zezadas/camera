/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.jl;
import com.google.android.gms.internal.jm;
import java.util.ArrayList;

public class jo
implements Parcelable.Creator<jm.a> {
    static void a(jm.a a, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, a.versionCode);
        b.a(parcel, 2, a.className, false);
        b.c(parcel, 3, a.ML, false);
        b.H(parcel, n);
    }

    public jm.a L(Parcel parcel) {
        ArrayList arrayList = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
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
                    string = a.o(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            arrayList = a.c(parcel, n3, jm.b.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new jm.a(n2, string, arrayList);
    }

    public jm.a[] aL(int n) {
        return new jm.a[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.L(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aL(n);
    }
}

