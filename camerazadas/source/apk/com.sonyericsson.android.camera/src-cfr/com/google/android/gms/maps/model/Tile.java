/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.u;
import com.google.android.gms.maps.model.v;

public final class Tile
implements SafeParcelable {
    public static final u CREATOR = new u();
    private final int BR;
    public final byte[] data;
    public final int height;
    public final int width;

    Tile(int n, int n2, int n3, byte[] arrby) {
        this.BR = n;
        this.width = n2;
        this.height = n3;
        this.data = arrby;
    }

    public Tile(int n, int n2, byte[] arrby) {
        this(1, n, n2, arrby);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (com.google.android.gms.maps.internal.v.mM()) {
            v.a(this, parcel, n);
            return;
        }
        u.a(this, parcel, n);
    }
}

