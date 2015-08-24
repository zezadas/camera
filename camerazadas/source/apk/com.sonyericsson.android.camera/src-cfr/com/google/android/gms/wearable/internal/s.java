/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wearable.c;
import com.google.android.gms.wearable.internal.r;

public class s
implements Parcelable.Creator<r> {
    static void a(r r, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, r.versionCode);
        b.c(parcel, 2, r.statusCode);
        b.a(parcel, 3, r.avx, n, false);
        b.H(parcel, n2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.dW(parcel);
    }

    public r dW(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        c c = null;
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
            c = a.a(parcel, n4, c.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new r(n3, n, c);
    }

    public r[] fZ(int n) {
        return new r[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fZ(n);
    }
}

