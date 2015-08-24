/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.model.CameraPosition;

public class b {
    static void a(GoogleMapOptions googleMapOptions, Parcel parcel, int n) {
        int n2 = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, googleMapOptions.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, googleMapOptions.mr());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, googleMapOptions.ms());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, googleMapOptions.getMapType());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, googleMapOptions.getCamera(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, googleMapOptions.mt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, googleMapOptions.mu());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, googleMapOptions.mv());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, googleMapOptions.mw());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, googleMapOptions.mx());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, googleMapOptions.my());
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n2);
    }
}

