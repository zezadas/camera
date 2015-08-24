/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.request.y;

public class z
implements Parcelable.Creator<y> {
    static void a(y y, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, y.getName(), false);
        b.c(parcel, 1000, y.getVersionCode());
        b.a(parcel, 2, y.getIdentifier(), false);
        b.H(parcel, n);
    }

    public y bO(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        String string2 = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    string2 = a.o(parcel, n3);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new y(n2, string2, string);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bO(parcel);
    }

    public y[] dg(int n) {
        return new y[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dg(n);
    }
}

