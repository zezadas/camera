/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.mp;

public class mq
implements Parcelable.Creator<mp> {
    static void a(mp mp, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, mp.uO, false);
        b.c(parcel, 1000, mp.BR);
        b.H(parcel, n);
    }

    public mp cC(Parcel parcel) {
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
                case 1: {
                    string = a.o(parcel, n3);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new mp(n2, string);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cC(parcel);
    }

    public mp[] es(int n) {
        return new mp[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.es(n);
    }
}

