/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.i;

public class g
implements Parcelable.Creator<LatLngBounds> {
    static void a(LatLngBounds latLngBounds, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, latLngBounds.getVersionCode());
        b.a(parcel, 2, latLngBounds.southwest, n, false);
        b.a(parcel, 3, latLngBounds.northeast, n, false);
        b.H(parcel, n2);
    }

    public LatLngBounds cL(Parcel parcel) {
        LatLng latLng = null;
        int n = a.C(parcel);
        int n2 = 0;
        LatLng latLng2 = null;
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
                    latLng2 = (LatLng)a.a(parcel, n3, LatLng.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            latLng = (LatLng)a.a(parcel, n3, LatLng.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new LatLngBounds(n2, latLng2, latLng);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cL(parcel);
    }

    public LatLngBounds[] eB(int n) {
        return new LatLngBounds[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eB(n);
    }
}

