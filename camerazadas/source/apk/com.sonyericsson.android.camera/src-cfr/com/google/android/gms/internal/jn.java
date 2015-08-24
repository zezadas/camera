/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.jm;
import com.google.android.gms.internal.jo;
import java.util.ArrayList;

public class jn
implements Parcelable.Creator<jm> {
    static void a(jm jm, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, jm.getVersionCode());
        b.c(parcel, 2, jm.hu(), false);
        b.a(parcel, 3, jm.hv(), false);
        b.H(parcel, n);
    }

    public jm K(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList arrayList = null;
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
                    arrayList = a.c(parcel, n3, jm.a.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new jm(n2, arrayList, string);
    }

    public jm[] aK(int n) {
        return new jm[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.K(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aK(n);
    }
}

