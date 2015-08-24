/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.i;
import com.google.android.gms.maps.model.q;

public class c
implements Parcelable.Creator<StreetViewPanoramaOptions> {
    static void a(StreetViewPanoramaOptions streetViewPanoramaOptions, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, streetViewPanoramaOptions.getVersionCode());
        b.a(parcel, 2, streetViewPanoramaOptions.getStreetViewPanoramaCamera(), n, false);
        b.a(parcel, 3, streetViewPanoramaOptions.getPanoramaId(), false);
        b.a(parcel, 4, streetViewPanoramaOptions.getPosition(), n, false);
        b.a(parcel, 5, streetViewPanoramaOptions.getRadius(), false);
        b.a(parcel, 6, streetViewPanoramaOptions.mE());
        b.a(parcel, 7, streetViewPanoramaOptions.mw());
        b.a(parcel, 8, streetViewPanoramaOptions.mF());
        b.a(parcel, 9, streetViewPanoramaOptions.mG());
        b.a(parcel, 10, streetViewPanoramaOptions.ms());
        b.H(parcel, n2);
    }

    public StreetViewPanoramaOptions cH(Parcel parcel) {
        Integer n = null;
        byte by = 0;
        int n2 = a.C(parcel);
        byte by2 = 0;
        byte by3 = 0;
        byte by4 = 0;
        byte by5 = 0;
        LatLng latLng = null;
        String string = null;
        StreetViewPanoramaCamera streetViewPanoramaCamera = null;
        int n3 = 0;
        block12 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block12;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block12;
                }
                case 2: {
                    streetViewPanoramaCamera = (StreetViewPanoramaCamera)a.a(parcel, n4, StreetViewPanoramaCamera.CREATOR);
                    continue block12;
                }
                case 3: {
                    string = a.o(parcel, n4);
                    continue block12;
                }
                case 4: {
                    latLng = (LatLng)a.a(parcel, n4, LatLng.CREATOR);
                    continue block12;
                }
                case 5: {
                    n = a.h(parcel, n4);
                    continue block12;
                }
                case 6: {
                    by5 = a.e(parcel, n4);
                    continue block12;
                }
                case 7: {
                    by4 = a.e(parcel, n4);
                    continue block12;
                }
                case 8: {
                    by3 = a.e(parcel, n4);
                    continue block12;
                }
                case 9: {
                    by2 = a.e(parcel, n4);
                    continue block12;
                }
                case 10: 
            }
            by = a.e(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new StreetViewPanoramaOptions(n3, streetViewPanoramaCamera, string, latLng, n, by5, by4, by3, by2, by);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cH(parcel);
    }

    public StreetViewPanoramaOptions[] ex(int n) {
        return new StreetViewPanoramaOptions[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ex(n);
    }
}

