/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.jd;
import com.google.android.gms.internal.jf;
import com.google.android.gms.internal.jg;

public class je
implements Parcelable.Creator<jd> {
    static void a(jd jd, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, jd.getVersionCode());
        b.a(parcel, 2, jd.ha(), n, false);
        b.H(parcel, n2);
    }

    public jd F(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        jf jf = null;
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
            jf = (jf)a.a(parcel, n3, jf.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new jd(n2, jf);
    }

    public jd[] aF(int n) {
        return new jd[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.F(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aF(n);
    }
}

