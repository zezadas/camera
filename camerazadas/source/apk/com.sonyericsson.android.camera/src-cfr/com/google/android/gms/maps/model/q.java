/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public class q
implements Parcelable.Creator<StreetViewPanoramaCamera> {
    static void a(StreetViewPanoramaCamera streetViewPanoramaCamera, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, streetViewPanoramaCamera.getVersionCode());
        b.a(parcel, 2, streetViewPanoramaCamera.zoom);
        b.a(parcel, 3, streetViewPanoramaCamera.tilt);
        b.a(parcel, 4, streetViewPanoramaCamera.bearing);
        b.H(parcel, n);
    }

    public StreetViewPanoramaCamera cQ(Parcel parcel) {
        float f = 0.0f;
        int n = a.C(parcel);
        float f2 = 0.0f;
        int n2 = 0;
        float f3 = 0.0f;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    f2 = a.l(parcel, n3);
                    continue block6;
                }
                case 3: {
                    f3 = a.l(parcel, n3);
                    continue block6;
                }
                case 4: 
            }
            f = a.l(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new StreetViewPanoramaCamera(n2, f2, f3, f);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cQ(parcel);
    }

    public StreetViewPanoramaCamera[] eG(int n) {
        return new StreetViewPanoramaCamera[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eG(n);
    }
}

