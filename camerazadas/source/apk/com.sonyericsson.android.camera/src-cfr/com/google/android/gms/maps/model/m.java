/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.i;
import java.util.ArrayList;
import java.util.List;

public class m
implements Parcelable.Creator<PolygonOptions> {
    static void a(PolygonOptions polygonOptions, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, polygonOptions.getVersionCode());
        b.c(parcel, 2, polygonOptions.getPoints(), false);
        b.d(parcel, 3, polygonOptions.mQ(), false);
        b.a(parcel, 4, polygonOptions.getStrokeWidth());
        b.c(parcel, 5, polygonOptions.getStrokeColor());
        b.c(parcel, 6, polygonOptions.getFillColor());
        b.a(parcel, 7, polygonOptions.getZIndex());
        b.a(parcel, 8, polygonOptions.isVisible());
        b.a(parcel, 9, polygonOptions.isGeodesic());
        b.H(parcel, n);
    }

    public PolygonOptions cO(Parcel parcel) {
        float f = 0.0f;
        boolean bl = false;
        int n = a.C(parcel);
        ArrayList<LatLng> arrayList = null;
        ArrayList arrayList2 = new ArrayList();
        boolean bl2 = false;
        int n2 = 0;
        int n3 = 0;
        float f2 = 0.0f;
        int n4 = 0;
        block11 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block11;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block11;
                }
                case 2: {
                    arrayList = a.c(parcel, n5, LatLng.CREATOR);
                    continue block11;
                }
                case 3: {
                    a.a(parcel, n5, arrayList2, this.getClass().getClassLoader());
                    continue block11;
                }
                case 4: {
                    f2 = a.l(parcel, n5);
                    continue block11;
                }
                case 5: {
                    n3 = a.g(parcel, n5);
                    continue block11;
                }
                case 6: {
                    n2 = a.g(parcel, n5);
                    continue block11;
                }
                case 7: {
                    f = a.l(parcel, n5);
                    continue block11;
                }
                case 8: {
                    bl2 = a.c(parcel, n5);
                    continue block11;
                }
                case 9: 
            }
            bl = a.c(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new PolygonOptions(n4, arrayList, arrayList2, f2, n3, n2, f, bl2, bl);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cO(parcel);
    }

    public PolygonOptions[] eE(int n) {
        return new PolygonOptions[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eE(n);
    }
}

