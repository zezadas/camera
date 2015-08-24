/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.StreetViewPanoramaLink;

public class r
implements Parcelable.Creator<StreetViewPanoramaLink> {
    static void a(StreetViewPanoramaLink streetViewPanoramaLink, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, streetViewPanoramaLink.getVersionCode());
        b.a(parcel, 2, streetViewPanoramaLink.panoId, false);
        b.a(parcel, 3, streetViewPanoramaLink.bearing);
        b.H(parcel, n);
    }

    public StreetViewPanoramaLink cR(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        float f = 0.0f;
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
                    string = a.o(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            f = a.l(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new StreetViewPanoramaLink(n2, string, f);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cR(parcel);
    }

    public StreetViewPanoramaLink[] eH(int n) {
        return new StreetViewPanoramaLink[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eH(n);
    }
}

