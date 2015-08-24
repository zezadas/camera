/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;

public class i
implements Parcelable.Creator<LatLng> {
    static void a(LatLng latLng, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, latLng.getVersionCode());
        b.a(parcel, 2, latLng.latitude);
        b.a(parcel, 3, latLng.longitude);
        b.H(parcel, n);
    }

    public LatLng cM(Parcel parcel) {
        double d = 0.0;
        int n = a.C(parcel);
        int n2 = 0;
        double d2 = 0.0;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: {
                    d2 = a.m(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            d = a.m(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new LatLng(n2, d2, d);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cM(parcel);
    }

    public LatLng[] eC(int n) {
        return new LatLng[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eC(n);
    }
}

