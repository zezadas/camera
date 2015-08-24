/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.internal.as;

public class at
implements Parcelable.Creator<as> {
    static void a(as as, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, as.versionCode);
        b.c(parcel, 2, as.statusCode);
        b.c(parcel, 3, as.avO);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.eh(parcel);
    }

    public as eh(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        int n3 = 0;
        int n4 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block5;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block5;
                }
                case 2: {
                    n3 = a.g(parcel, n5);
                    continue block5;
                }
                case 3: 
            }
            n = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new as(n4, n3, n);
    }

    public as[] gk(int n) {
        return new as[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.gk(n);
    }
}

