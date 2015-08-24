/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.i;
import com.google.android.gms.maps.model.j;

public final class LatLng
implements SafeParcelable {
    public static final i CREATOR = new i();
    private final int BR;
    public final double latitude;
    public final double longitude;

    public LatLng(double d, double d2) {
        this(1, d, d2);
    }

    /*
     * Enabled aggressive block sorting
     */
    LatLng(int n, double d, double d2) {
        this.BR = n;
        this.longitude = -180.0 <= d2 && d2 < 180.0 ? d2 : ((d2 - 180.0) % 360.0 + 360.0) % 360.0 - 180.0;
        this.latitude = Math.max(-90.0, Math.min(90.0, d));
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof LatLng)) {
            return false;
        }
        object = (LatLng)object;
        if (Double.doubleToLongBits(this.latitude) != Double.doubleToLongBits(object.latitude)) return false;
        if (Double.doubleToLongBits(this.longitude) == Double.doubleToLongBits(object.longitude)) return true;
        return false;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        long l = Double.doubleToLongBits(this.latitude);
        int n = (int)(l ^ l >>> 32);
        l = Double.doubleToLongBits(this.longitude);
        return (n + 31) * 31 + (int)(l ^ l >>> 32);
    }

    public String toString() {
        return "lat/lng: (" + this.latitude + "," + this.longitude + ")";
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (v.mM()) {
            j.a(this, parcel, n);
            return;
        }
        i.a(this, parcel, n);
    }
}

