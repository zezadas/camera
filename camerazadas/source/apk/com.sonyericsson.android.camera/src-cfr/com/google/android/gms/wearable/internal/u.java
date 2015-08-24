/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.c;
import com.google.android.gms.wearable.internal.t;

public class u
implements Parcelable.Creator<t> {
    static void a(t t, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, t.versionCode);
        b.c(parcel, 2, t.statusCode);
        b.a((Parcel)parcel, (int)3, (Parcelable[])t.avy, (int)n, (boolean)false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dX(parcel);
    }

    public t dX(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        c[] arrc = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: {
                    n = a.g(parcel, n4);
                    continue block5;
                }
                case 3: 
            }
            arrc = a.b(parcel, n4, c.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new t(n3, n, arrc);
    }

    public t[] ga(int n) {
        return new t[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ga(n);
    }
}

