/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.jf;

public class jh
implements Parcelable.Creator<jf.a> {
    static void a(jf.a a, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, a.versionCode);
        b.a(parcel, 2, a.Mw, false);
        b.c(parcel, 3, a.Mx);
        b.H(parcel, n);
    }

    public jf.a H(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        String string = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: {
                    string = a.o(parcel, n4);
                    continue block5;
                }
                case 3: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new jf.a(n3, string, n);
    }

    public jf.a[] aH(int n) {
        return new jf.a[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.H(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aH(n);
    }
}

