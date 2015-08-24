/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.TileOverlayOptions;

public class w
implements Parcelable.Creator<TileOverlayOptions> {
    static void a(TileOverlayOptions tileOverlayOptions, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, tileOverlayOptions.getVersionCode());
        b.a(parcel, 2, tileOverlayOptions.mR(), false);
        b.a(parcel, 3, tileOverlayOptions.isVisible());
        b.a(parcel, 4, tileOverlayOptions.getZIndex());
        b.a(parcel, 5, tileOverlayOptions.getFadeIn());
        b.H(parcel, n);
    }

    public TileOverlayOptions cV(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        IBinder iBinder = null;
        float f = 0.0f;
        boolean bl2 = true;
        int n2 = 0;
        block7 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block7;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block7;
                }
                case 2: {
                    iBinder = a.p(parcel, n3);
                    continue block7;
                }
                case 3: {
                    bl = a.c(parcel, n3);
                    continue block7;
                }
                case 4: {
                    f = a.l(parcel, n3);
                    continue block7;
                }
                case 5: 
            }
            bl2 = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new TileOverlayOptions(n2, iBinder, bl, f, bl2);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cV(parcel);
    }

    public TileOverlayOptions[] eL(int n) {
        return new TileOverlayOptions[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eL(n);
    }
}

