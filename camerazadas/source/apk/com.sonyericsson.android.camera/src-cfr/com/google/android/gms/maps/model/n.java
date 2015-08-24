/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PolygonOptions;
import java.util.List;

public class n {
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
}

