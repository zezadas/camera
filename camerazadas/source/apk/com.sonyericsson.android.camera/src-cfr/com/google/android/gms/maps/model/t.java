/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public class t
implements Parcelable.Creator<StreetViewPanoramaOrientation> {
    static void a(StreetViewPanoramaOrientation streetViewPanoramaOrientation, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, streetViewPanoramaOrientation.getVersionCode());
        b.a(parcel, 2, streetViewPanoramaOrientation.tilt);
        b.a(parcel, 3, streetViewPanoramaOrientation.bearing);
        b.H(parcel, n);
    }

    public StreetViewPanoramaOrientation cT(Parcel parcel) {
        float f = 0.0f;
        int n = a.C(parcel);
        int n2 = 0;
        float f2 = 0.0f;
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
                    f2 = a.l(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            f = a.l(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new StreetViewPanoramaOrientation(n2, f2, f);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cT(parcel);
    }

    public StreetViewPanoramaOrientation[] eJ(int n) {
        return new StreetViewPanoramaOrientation[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eJ(n);
    }
}

