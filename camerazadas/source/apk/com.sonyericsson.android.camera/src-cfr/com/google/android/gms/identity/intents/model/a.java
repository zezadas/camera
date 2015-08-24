/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.identity.intents.model.CountrySpecification;

public class a
implements Parcelable.Creator<CountrySpecification> {
    static void a(CountrySpecification countrySpecification, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, countrySpecification.getVersionCode());
        b.a(parcel, 2, countrySpecification.uW, false);
        b.H(parcel, n);
    }

    public CountrySpecification cq(Parcel parcel) {
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        String string = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new CountrySpecification(n2, string);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cq(parcel);
    }

    public CountrySpecification[] dY(int n) {
        return new CountrySpecification[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dY(n);
    }
}

