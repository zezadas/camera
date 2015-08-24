/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.VisibleRegion;

public class z {
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
}

