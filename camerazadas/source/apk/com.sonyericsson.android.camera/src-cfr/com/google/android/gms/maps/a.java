/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.model.CameraPosition;

public class a
implements Parcelable.Creator<GoogleMapOptions> {
    static void a(GoogleMapOptions googleMapOptions, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, googleMapOptions.getVersionCode());
        b.a(parcel, 2, googleMapOptions.mr());
        b.a(parcel, 3, googleMapOptions.ms());
        b.c(parcel, 4, googleMapOptions.getMapType());
        b.a(parcel, 5, googleMapOptions.getCamera(), n, false);
        b.a(parcel, 6, googleMapOptions.mt());
        b.a(parcel, 7, googleMapOptions.mu());
        b.a(parcel, 8, googleMapOptions.mv());
        b.a(parcel, 9, googleMapOptions.mw());
        b.a(parcel, 10, googleMapOptions.mx());
        b.a(parcel, 11, googleMapOptions.my());
        b.H(parcel, n2);
    }

    public GoogleMapOptions cG(Parcel parcel) {
        byte by = 0;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        CameraPosition cameraPosition = null;
        byte by2 = 0;
        byte by3 = 0;
        byte by4 = 0;
        byte by5 = 0;
        byte by6 = 0;
        int n2 = 0;
        byte by7 = 0;
        byte by8 = 0;
        int n3 = 0;
        block13 : while (parcel.dataPosition() < n) {
            int n4 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n4)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n4);
                    continue block13;
                }
                case 1: {
                    n3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block13;
                }
                case 2: {
                    by8 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, n4);
                    continue block13;
                }
                case 3: {
                    by7 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, n4);
                    continue block13;
                }
                case 4: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block13;
                }
                case 5: {
                    cameraPosition = (CameraPosition)com.google.android.gms.common.internal.safeparcel.a.a(parcel, n4, CameraPosition.CREATOR);
                    continue block13;
                }
                case 6: {
                    by6 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, n4);
                    continue block13;
                }
                case 7: {
                    by5 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, n4);
                    continue block13;
                }
                case 8: {
                    by4 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, n4);
                    continue block13;
                }
                case 9: {
                    by3 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, n4);
                    continue block13;
                }
                case 10: {
                    by2 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, n4);
                    continue block13;
                }
                case 11: 
            }
            by = com.google.android.gms.common.internal.safeparcel.a.e(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new GoogleMapOptions(n3, by8, by7, n2, cameraPosition, by6, by5, by4, by3, by2, by);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cG(parcel);
    }

    public GoogleMapOptions[] ew(int n) {
        return new GoogleMapOptions[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ew(n);
    }
}

