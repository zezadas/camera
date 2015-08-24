/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.i;

public class c
implements Parcelable.Creator<CircleOptions> {
    static void a(CircleOptions circleOptions, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, circleOptions.getVersionCode());
        b.a(parcel, 2, circleOptions.getCenter(), n, false);
        b.a(parcel, 3, circleOptions.getRadius());
        b.a(parcel, 4, circleOptions.getStrokeWidth());
        b.c(parcel, 5, circleOptions.getStrokeColor());
        b.c(parcel, 6, circleOptions.getFillColor());
        b.a(parcel, 7, circleOptions.getZIndex());
        b.a(parcel, 8, circleOptions.isVisible());
        b.H(parcel, n2);
    }

    public CircleOptions cJ(Parcel parcel) {
        float f = 0.0f;
        boolean bl = false;
        int n = a.C(parcel);
        LatLng latLng = null;
        double d = 0.0;
        int n2 = 0;
        int n3 = 0;
        float f2 = 0.0f;
        int n4 = 0;
        block10 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block10;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block10;
                }
                case 2: {
                    latLng = (LatLng)a.a(parcel, n5, LatLng.CREATOR);
                    continue block10;
                }
                case 3: {
                    d = a.m(parcel, n5);
                    continue block10;
                }
                case 4: {
                    f2 = a.l(parcel, n5);
                    continue block10;
                }
                case 5: {
                    n3 = a.g(parcel, n5);
                    continue block10;
                }
                case 6: {
                    n2 = a.g(parcel, n5);
                    continue block10;
                }
                case 7: {
                    f = a.l(parcel, n5);
                    continue block10;
                }
                case 8: 
            }
            bl = a.c(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new CircleOptions(n4, latLng, d, f2, n3, n2, f, bl);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cJ(parcel);
    }

    public CircleOptions[] ez(int n) {
        return new CircleOptions[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ez(n);
    }
}

