/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.gt;

public class gu
implements Parcelable.Creator<gt> {
    static void a(gt gt, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, gt.versionCode);
        b.a(parcel, 2, gt.wD, false);
        b.c(parcel, 3, gt.wE);
        b.c(parcel, 4, gt.wF);
        b.a(parcel, 5, gt.wG);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.j(parcel);
    }

    public gt j(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        String string = null;
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        block7 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block7;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block7;
                }
                case 2: {
                    string = a.o(parcel, n5);
                    continue block7;
                }
                case 3: {
                    n3 = a.g(parcel, n5);
                    continue block7;
                }
                case 4: {
                    n2 = a.g(parcel, n5);
                    continue block7;
                }
                case 5: 
            }
            bl = a.c(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new gt(n4, string, n3, n2, bl);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.v(n);
    }

    public gt[] v(int n) {
        return new gt[n];
    }
}

