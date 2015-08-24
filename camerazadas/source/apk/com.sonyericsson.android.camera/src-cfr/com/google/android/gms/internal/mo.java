/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.mj;
import com.google.android.gms.internal.mk;
import com.google.android.gms.internal.mn;

public class mo
implements Parcelable.Creator<mn> {
    static void a(mn mn, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1000, mn.BR);
        b.a(parcel, 2, mn.mh(), n, false);
        b.a(parcel, 3, mn.getInterval());
        b.c(parcel, 4, mn.getPriority());
        b.H(parcel, n2);
    }

    public mn cB(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        mj mj = null;
        long l = mn.afA;
        int n3 = 102;
        block6 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block6;
                }
                case 1000: {
                    n2 = a.g(parcel, n4);
                    continue block6;
                }
                case 2: {
                    mj = (mj)a.a(parcel, n4, mj.CREATOR);
                    continue block6;
                }
                case 3: {
                    l = a.i(parcel, n4);
                    continue block6;
                }
                case 4: 
            }
            n3 = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new mn(n2, mj, l, n3);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cB(parcel);
    }

    public mn[] er(int n) {
        return new mn[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.er(n);
    }
}

