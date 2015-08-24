/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.i;

public class a
implements Parcelable.Creator<CameraPosition> {
    static void a(CameraPosition cameraPosition, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, cameraPosition.getVersionCode());
        b.a(parcel, 2, cameraPosition.target, n, false);
        b.a(parcel, 3, cameraPosition.zoom);
        b.a(parcel, 4, cameraPosition.tilt);
        b.a(parcel, 5, cameraPosition.bearing);
        b.H(parcel, n2);
    }

    public CameraPosition cI(Parcel parcel) {
        float f = 0.0f;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        LatLng latLng = null;
        float f2 = 0.0f;
        float f3 = 0.0f;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    latLng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, LatLng.CREATOR);
                    continue block7;
                }
                case 3: {
                    f3 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, n3);
                    continue block7;
                }
                case 4: {
                    f2 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, n3);
                    continue block7;
                }
                case 5: 
            }
            f = com.google.android.gms.common.internal.safeparcel.a.l(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new CameraPosition(n2, latLng, f3, f2, f);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cI(parcel);
    }

    public CameraPosition[] ey(int n) {
        return new CameraPosition[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ey(n);
    }
}

