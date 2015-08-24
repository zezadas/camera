/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.il;

public class im
implements Parcelable.Creator<il> {
    static void a(il il, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, il.getVersionCode());
        b.a(parcel, 2, il.fE());
        b.a(parcel, 3, il.fM());
        b.c(parcel, 4, il.fN());
        b.a(parcel, 5, il.getApplicationMetadata(), n, false);
        b.c(parcel, 6, il.fO());
        b.H(parcel, n2);
    }

    public il[] ah(int n) {
        return new il[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.x(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ah(n);
    }

    public il x(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        double d = 0.0;
        ApplicationMetadata applicationMetadata = null;
        int n3 = 0;
        boolean bl = false;
        int n4 = 0;
        block8 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block8;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block8;
                }
                case 2: {
                    d = a.m(parcel, n5);
                    continue block8;
                }
                case 3: {
                    bl = a.c(parcel, n5);
                    continue block8;
                }
                case 4: {
                    n3 = a.g(parcel, n5);
                    continue block8;
                }
                case 5: {
                    applicationMetadata = a.a(parcel, n5, ApplicationMetadata.CREATOR);
                    continue block8;
                }
                case 6: 
            }
            n = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new il(n4, d, bl, n3, applicationMetadata, n);
    }
}

