/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.jf;
import com.google.android.gms.internal.jh;
import java.util.ArrayList;

public class jg
implements Parcelable.Creator<jf> {
    static void a(jf jf, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, jf.getVersionCode());
        b.c(parcel, 2, jf.hc(), false);
        b.H(parcel, n);
    }

    public jf G(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList arrayList = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            arrayList = a.c(parcel, n3, jf.a.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new jf(n2, arrayList);
    }

    public jf[] aG(int n) {
        return new jf[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.G(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aG(n);
    }
}

