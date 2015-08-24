/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.request.ad;

public class ae
implements Parcelable.Creator<ad> {
    static void a(ad ad, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, ad.jC(), false);
        b.c(parcel, 1000, ad.getVersionCode());
        b.H(parcel, n);
    }

    public ad bR(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        IBinder iBinder = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    iBinder = a.p(parcel, n3);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ad(n2, iBinder);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bR(parcel);
    }

    public ad[] dj(int n) {
        return new ad[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dj(n);
    }
}

