/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public class h {
    static void a(LatLngBounds latLngBounds, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, latLngBounds.getVersionCode());
        b.a(parcel, 2, latLngBounds.southwest, n, false);
        b.a(parcel, 3, latLngBounds.northeast, n, false);
        b.H(parcel, n2);
    }
}

