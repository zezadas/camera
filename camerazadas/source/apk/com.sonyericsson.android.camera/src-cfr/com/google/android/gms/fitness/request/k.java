/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.request.j;

public class k
implements Parcelable.Creator<j> {
    static void a(j j, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, j.getName(), false);
        b.c(parcel, 1000, j.getVersionCode());
        b.H(parcel, n);
    }

    public j bG(Parcel parcel) {
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
        return new j(n2, string);
    }

    public j[] cX(int n) {
        return new j[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bG(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cX(n);
    }
}

