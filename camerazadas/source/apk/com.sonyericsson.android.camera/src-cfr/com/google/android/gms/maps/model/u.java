/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.Tile;

public class u
implements Parcelable.Creator<Tile> {
    static void a(Tile tile, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, tile.getVersionCode());
        b.c(parcel, 2, tile.width);
        b.c(parcel, 3, tile.height);
        b.a(parcel, 4, tile.data, false);
        b.H(parcel, n);
    }

    public Tile cU(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        Object object = null;
        int n3 = 0;
        int n4 = 0;
        block6 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block6;
                }
                case 1: {
                    n4 = a.g(parcel, n5);
                    continue block6;
                }
                case 2: {
                    n3 = a.g(parcel, n5);
                    continue block6;
                }
                case 3: {
                    n = a.g(parcel, n5);
                    continue block6;
                }
                case 4: 
            }
            object = a.r(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new Tile(n4, n3, n, (byte[])object);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cU(parcel);
    }

    public Tile[] eK(int n) {
        return new Tile[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eK(n);
    }
}

