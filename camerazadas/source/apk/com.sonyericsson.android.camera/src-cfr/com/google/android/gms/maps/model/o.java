/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.i;
import java.util.ArrayList;
import java.util.List;

public class o
implements Parcelable.Creator<PolylineOptions> {
    static void a(PolylineOptions polylineOptions, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, polylineOptions.getVersionCode());
        b.c(parcel, 2, polylineOptions.getPoints(), false);
        b.a(parcel, 3, polylineOptions.getWidth());
        b.c(parcel, 4, polylineOptions.getColor());
        b.a(parcel, 5, polylineOptions.getZIndex());
        b.a(parcel, 6, polylineOptions.isVisible());
        b.a(parcel, 7, polylineOptions.isGeodesic());
        b.H(parcel, n);
    }

    public PolylineOptions cP(Parcel parcel) {
        float f = 0.0f;
        boolean bl = false;
        int n = a.C(parcel);
        ArrayList arrayList = null;
        boolean bl2 = false;
        int n2 = 0;
        float f2 = 0.0f;
        int n3 = 0;
        block9 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block9;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block9;
                }
                case 2: {
                    arrayList = a.c(parcel, n4, LatLng.CREATOR);
                    continue block9;
                }
                case 3: {
                    f2 = a.l(parcel, n4);
                    continue block9;
                }
                case 4: {
                    n2 = a.g(parcel, n4);
                    continue block9;
                }
                case 5: {
                    f = a.l(parcel, n4);
                    continue block9;
                }
                case 6: {
                    bl2 = a.c(parcel, n4);
                    continue block9;
                }
                case 7: 
            }
            bl = a.c(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new PolylineOptions(n3, arrayList, f2, n2, f, bl2, bl);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cP(parcel);
    }

    public PolylineOptions[] eF(int n) {
        return new PolylineOptions[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eF(n);
    }
}

