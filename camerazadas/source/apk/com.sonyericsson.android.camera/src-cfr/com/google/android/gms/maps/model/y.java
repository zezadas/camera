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
import com.google.android.gms.maps.model.VisibleRegion;
import com.google.android.gms.maps.model.g;
import com.google.android.gms.maps.model.i;

public class y
implements Parcelable.Creator<VisibleRegion> {
    static void a(VisibleRegion visibleRegion, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, visibleRegion.getVersionCode());
        b.a(parcel, 2, visibleRegion.nearLeft, n, false);
        b.a(parcel, 3, visibleRegion.nearRight, n, false);
        b.a(parcel, 4, visibleRegion.farLeft, n, false);
        b.a(parcel, 5, visibleRegion.farRight, n, false);
        b.a(parcel, 6, visibleRegion.latLngBounds, n, false);
        b.H(parcel, n2);
    }

    public VisibleRegion cW(Parcel parcel) {
        LatLngBounds latLngBounds = null;
        int n = a.C(parcel);
        int n2 = 0;
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
        block8 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block8;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block8;
                }
                case 2: {
                    latLng4 = (LatLng)a.a(parcel, n3, LatLng.CREATOR);
                    continue block8;
                }
                case 3: {
                    latLng3 = (LatLng)a.a(parcel, n3, LatLng.CREATOR);
                    continue block8;
                }
                case 4: {
                    latLng2 = (LatLng)a.a(parcel, n3, LatLng.CREATOR);
                    continue block8;
                }
                case 5: {
                    latLng = (LatLng)a.a(parcel, n3, LatLng.CREATOR);
                    continue block8;
                }
                case 6: 
            }
            latLngBounds = (LatLngBounds)a.a(parcel, n3, LatLngBounds.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new VisibleRegion(n2, latLng4, latLng3, latLng2, latLng, latLngBounds);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cW(parcel);
    }

    public VisibleRegion[] eM(int n) {
        return new VisibleRegion[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eM(n);
    }
}

