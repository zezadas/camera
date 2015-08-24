/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.g;
import com.google.android.gms.maps.model.i;

public class e
implements Parcelable.Creator<GroundOverlayOptions> {
    static void a(GroundOverlayOptions groundOverlayOptions, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, groundOverlayOptions.getVersionCode());
        b.a(parcel, 2, groundOverlayOptions.mO(), false);
        b.a(parcel, 3, groundOverlayOptions.getLocation(), n, false);
        b.a(parcel, 4, groundOverlayOptions.getWidth());
        b.a(parcel, 5, groundOverlayOptions.getHeight());
        b.a(parcel, 6, groundOverlayOptions.getBounds(), n, false);
        b.a(parcel, 7, groundOverlayOptions.getBearing());
        b.a(parcel, 8, groundOverlayOptions.getZIndex());
        b.a(parcel, 9, groundOverlayOptions.isVisible());
        b.a(parcel, 10, groundOverlayOptions.getTransparency());
        b.a(parcel, 11, groundOverlayOptions.getAnchorU());
        b.a(parcel, 12, groundOverlayOptions.getAnchorV());
        b.H(parcel, n2);
    }

    public GroundOverlayOptions cK(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        IBinder iBinder = null;
        LatLng latLng = null;
        float f = 0.0f;
        float f2 = 0.0f;
        LatLngBounds latLngBounds = null;
        float f3 = 0.0f;
        float f4 = 0.0f;
        boolean bl = false;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        block14 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block14;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block14;
                }
                case 2: {
                    iBinder = a.p(parcel, n3);
                    continue block14;
                }
                case 3: {
                    latLng = (LatLng)a.a(parcel, n3, LatLng.CREATOR);
                    continue block14;
                }
                case 4: {
                    f = a.l(parcel, n3);
                    continue block14;
                }
                case 5: {
                    f2 = a.l(parcel, n3);
                    continue block14;
                }
                case 6: {
                    latLngBounds = (LatLngBounds)a.a(parcel, n3, LatLngBounds.CREATOR);
                    continue block14;
                }
                case 7: {
                    f3 = a.l(parcel, n3);
                    continue block14;
                }
                case 8: {
                    f4 = a.l(parcel, n3);
                    continue block14;
                }
                case 9: {
                    bl = a.c(parcel, n3);
                    continue block14;
                }
                case 10: {
                    f5 = a.l(parcel, n3);
                    continue block14;
                }
                case 11: {
                    f6 = a.l(parcel, n3);
                    continue block14;
                }
                case 12: 
            }
            f7 = a.l(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new GroundOverlayOptions(n2, iBinder, latLng, f, f2, latLngBounds, f3, f4, bl, f5, f6, f7);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cK(parcel);
    }

    public GroundOverlayOptions[] eA(int n) {
        return new GroundOverlayOptions[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eA(n);
    }
}

