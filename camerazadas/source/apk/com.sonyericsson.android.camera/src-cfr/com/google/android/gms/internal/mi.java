/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.mh;
import com.google.android.gms.internal.mj;
import com.google.android.gms.internal.mk;

public class mi
implements Parcelable.Creator<mh> {
    static void a(mh mh, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, mh.mc());
        b.c(parcel, 1000, mh.getVersionCode());
        b.c(parcel, 2, mh.mg());
        b.a(parcel, 3, mh.mh(), n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cy(parcel);
    }

    public mh cy(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        int n3 = -1;
        mj mj = null;
        int n4 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block6;
                }
                case 1: {
                    n = a.g(parcel, n5);
                    continue block6;
                }
                case 1000: {
                    n4 = a.g(parcel, n5);
                    continue block6;
                }
                case 2: {
                    n3 = a.g(parcel, n5);
                    continue block6;
                }
                case 3: 
            }
            mj = (mj)a.a(parcel, n5, mj.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new mh(n4, n, n3, mj);
    }

    public mh[] eo(int n) {
        return new mh[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eo(n);
    }
}

