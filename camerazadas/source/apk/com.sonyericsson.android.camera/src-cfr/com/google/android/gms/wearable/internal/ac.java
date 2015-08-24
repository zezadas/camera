/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.internal.ab;
import com.google.android.gms.wearable.internal.ak;

public class ac
implements Parcelable.Creator<ab> {
    static void a(ab ab, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, ab.versionCode);
        b.c(parcel, 2, ab.statusCode);
        b.a(parcel, 3, ab.avC, n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.eb(parcel);
    }

    public ab eb(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        ak ak = null;
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
            ak = a.a(parcel, n4, ak.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ab(n3, n, ak);
    }

    public ab[] ge(int n) {
        return new ab[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ge(n);
    }
}

