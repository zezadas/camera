/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.i;

public class k
implements Parcelable.Creator<MarkerOptions> {
    static void a(MarkerOptions markerOptions, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, markerOptions.getVersionCode());
        b.a(parcel, 2, markerOptions.getPosition(), n, false);
        b.a(parcel, 3, markerOptions.getTitle(), false);
        b.a(parcel, 4, markerOptions.getSnippet(), false);
        b.a(parcel, 5, markerOptions.mP(), false);
        b.a(parcel, 6, markerOptions.getAnchorU());
        b.a(parcel, 7, markerOptions.getAnchorV());
        b.a(parcel, 8, markerOptions.isDraggable());
        b.a(parcel, 9, markerOptions.isVisible());
        b.a(parcel, 10, markerOptions.isFlat());
        b.a(parcel, 11, markerOptions.getRotation());
        b.a(parcel, 12, markerOptions.getInfoWindowAnchorU());
        b.a(parcel, 13, markerOptions.getInfoWindowAnchorV());
        b.a(parcel, 14, markerOptions.getAlpha());
        b.H(parcel, n2);
    }

    public MarkerOptions cN(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        LatLng latLng = null;
        String string = null;
        String string2 = null;
        IBinder iBinder = null;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean bl = false;
        boolean bl2 = false;
        boolean bl3 = false;
        float f3 = 0.0f;
        float f4 = 0.5f;
        float f5 = 0.0f;
        float f6 = 1.0f;
        block16 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block16;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block16;
                }
                case 2: {
                    latLng = (LatLng)a.a(parcel, n3, LatLng.CREATOR);
                    continue block16;
                }
                case 3: {
                    string = a.o(parcel, n3);
                    continue block16;
                }
                case 4: {
                    string2 = a.o(parcel, n3);
                    continue block16;
                }
                case 5: {
                    iBinder = a.p(parcel, n3);
                    continue block16;
                }
                case 6: {
                    f = a.l(parcel, n3);
                    continue block16;
                }
                case 7: {
                    f2 = a.l(parcel, n3);
                    continue block16;
                }
                case 8: {
                    bl = a.c(parcel, n3);
                    continue block16;
                }
                case 9: {
                    bl2 = a.c(parcel, n3);
                    continue block16;
                }
                case 10: {
                    bl3 = a.c(parcel, n3);
                    continue block16;
                }
                case 11: {
                    f3 = a.l(parcel, n3);
                    continue block16;
                }
                case 12: {
                    f4 = a.l(parcel, n3);
                    continue block16;
                }
                case 13: {
                    f5 = a.l(parcel, n3);
                    continue block16;
                }
                case 14: 
            }
            f6 = a.l(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new MarkerOptions(n2, latLng, string, string2, iBinder, f, f2, bl, bl2, bl3, f3, f4, f5, f6);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cN(parcel);
    }

    public MarkerOptions[] eD(int n) {
        return new MarkerOptions[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eD(n);
    }
}

