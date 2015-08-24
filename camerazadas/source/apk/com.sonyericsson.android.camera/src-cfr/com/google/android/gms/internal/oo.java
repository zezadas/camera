/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.on;

public class oo
implements Parcelable.Creator<on> {
    static void a(on on, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, on.getVersionCode());
        b.a(parcel, 2, on.atN, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dB(parcel);
    }

    public on dB(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        Object object = null;
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
            object = a.u(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new on(n2, (int[])object);
    }

    public on[] fC(int n) {
        return new on[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fC(n);
    }
}

