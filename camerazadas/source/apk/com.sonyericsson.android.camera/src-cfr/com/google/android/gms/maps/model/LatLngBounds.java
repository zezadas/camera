/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.g;
import com.google.android.gms.maps.model.h;

public final class LatLngBounds
implements SafeParcelable {
    public static final g CREATOR = new g();
    private final int BR;
    public final LatLng northeast;
    public final LatLng southwest;

    /*
     * Enabled aggressive block sorting
     */
    LatLngBounds(int n, LatLng latLng, LatLng latLng2) {
        o.b(latLng, (Object)"null southwest");
        o.b(latLng2, (Object)"null northeast");
        boolean bl = latLng2.latitude >= latLng.latitude;
        o.b(bl, "southern latitude exceeds northern latitude (%s > %s)", latLng.latitude, latLng2.latitude);
        this.BR = n;
        this.southwest = latLng;
        this.northeast = latLng2;
    }

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        this(1, latLng, latLng2);
    }

    private static double b(double d, double d2) {
        return (d - d2 + 360.0) % 360.0;
    }

    public static Builder builder() {
        return new Builder();
    }

    private static double c(double d, double d2) {
        return (d2 - d + 360.0) % 360.0;
    }

    private boolean c(double d) {
        if (this.southwest.latitude <= d && d <= this.northeast.latitude) {
            return true;
        }
        return false;
    }

    private boolean d(double d) {
        boolean bl = false;
        if (this.southwest.longitude <= this.northeast.longitude) {
            if (this.southwest.longitude <= d && d <= this.northeast.longitude) {
                return true;
            }
            return false;
        }
        if (this.southwest.longitude <= d || d <= this.northeast.longitude) {
            bl = true;
        }
        return bl;
    }

    public boolean contains(LatLng latLng) {
        if (this.c(latLng.latitude) && this.d(latLng.longitude)) {
            return true;
        }
        return false;
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
        if (!(object instanceof LatLngBounds)) {
            return false;
        }
        object = (LatLngBounds)object;
        if (!this.southwest.equals(object.southwest)) return false;
        if (this.northeast.equals(object.northeast)) return true;
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public LatLng getCenter() {
        double d = (this.southwest.latitude + this.northeast.latitude) / 2.0;
        double d2 = this.southwest.longitude;
        double d3 = this.northeast.longitude;
        if (d2 <= d3) {
            d3 = (d3 + d2) / 2.0;
            do {
                return new LatLng(d, d3);
                break;
            } while (true);
        }
        d3 = (d3 + 360.0 + d2) / 2.0;
        return new LatLng(d, d3);
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.southwest, this.northeast);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public LatLngBounds including(LatLng latLng) {
        double d = Math.min(this.southwest.latitude, latLng.latitude);
        double d2 = Math.max(this.northeast.latitude, latLng.latitude);
        double d3 = this.northeast.longitude;
        double d4 = this.southwest.longitude;
        double d5 = latLng.longitude;
        if (!this.d(d5)) {
            if (LatLngBounds.b(d4, d5) < LatLngBounds.c(d3, d5)) {
                do {
                    return new LatLngBounds(new LatLng(d, d5), new LatLng(d2, d3));
                    break;
                } while (true);
            }
            d3 = d5;
            d5 = d4;
            return new LatLngBounds(new LatLng(d, d5), new LatLng(d2, d3));
        }
        d5 = d4;
        return new LatLngBounds(new LatLng(d, d5), new LatLng(d2, d3));
    }

    public String toString() {
        return n.h(this).a("southwest", this.southwest).a("northeast", this.northeast).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (v.mM()) {
            h.a(this, parcel, n);
            return;
        }
        g.a(this, parcel, n);
    }

    public static final class Builder {
        private double ajY = Infinity;
        private double ajZ = -Infinity;
        private double aka = NaN;
        private double akb = NaN;

        private boolean d(double d) {
            boolean bl = false;
            if (this.aka <= this.akb) {
                if (this.aka <= d && d <= this.akb) {
                    return true;
                }
                return false;
            }
            if (this.aka <= d || d <= this.akb) {
                bl = true;
            }
            return bl;
        }

        /*
         * Enabled aggressive block sorting
         */
        public LatLngBounds build() {
            boolean bl = !Double.isNaN(this.aka);
            o.a(bl, "no included points");
            return new LatLngBounds(new LatLng(this.ajY, this.aka), new LatLng(this.ajZ, this.akb));
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder include(LatLng latLng) {
            this.ajY = Math.min(this.ajY, latLng.latitude);
            this.ajZ = Math.max(this.ajZ, latLng.latitude);
            double d = latLng.longitude;
            if (Double.isNaN(this.aka)) {
                this.aka = d;
                this.akb = d;
                return this;
            }
            if (this.d(d)) return this;
            {
                if (LatLngBounds.b(this.aka, d) < LatLngBounds.c(this.akb, d)) {
                    this.aka = d;
                    return this;
                }
            }
            this.akb = d;
            return this;
        }
    }

}

