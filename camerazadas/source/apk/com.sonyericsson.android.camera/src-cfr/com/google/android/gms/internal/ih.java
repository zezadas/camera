/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ig;

public class ih
implements Parcelable.Creator<ig> {
    static void a(ig ig, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, ig.getVersionCode());
        b.a(parcel, 2, ig.fy(), false);
        b.H(parcel, n);
    }

    public ig[] ab(int n) {
        return new ig[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.w(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ab(n);
    }

    public ig w(Parcel parcel) {
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
        return new ig(n2, string);
    }
}

