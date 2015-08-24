/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.request.ah;

public class ai
implements Parcelable.Creator<ah> {
    static void a(ah ah, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1000, ah.getVersionCode());
        b.a(parcel, 2, ah.getDeviceAddress(), false);
        b.H(parcel, n);
    }

    public ah bT(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ah(n2, string);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bT(parcel);
    }

    public ah[] dl(int n) {
        return new ah[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dl(n);
    }
}

