/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ji;
import com.google.android.gms.internal.jk;
import com.google.android.gms.internal.jm;

public class jl
implements Parcelable.Creator<jm.b> {
    static void a(jm.b b, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, b.versionCode);
        b.a(parcel, 2, b.fv, false);
        b.a(parcel, 3, b.MM, n, false);
        b.H(parcel, n2);
    }

    public jm.b J(Parcel parcel) {
        ji.a a = null;
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
            a = (ji.a)a.a(parcel, n3, ji.a.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new jm.b(n2, string, a);
    }

    public jm.b[] aJ(int n) {
        return new jm.b[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.J(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aJ(n);
    }
}

