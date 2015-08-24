/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.t;

public class StreetViewPanoramaOrientation
implements SafeParcelable {
    public static final t CREATOR = new t();
    private final int BR;
    public final float bearing;
    public final float tilt;

    public StreetViewPanoramaOrientation(float f, float f2) {
        this(1, f, f2);
    }

    /*
     * Enabled aggressive block sorting
     */
    StreetViewPanoramaOrientation(int n, float f, float f2) {
        boolean bl = -90.0f <= f && f <= 90.0f;
        o.b(bl, (Object)"Tilt needs to be between -90 and 90 inclusive");
        this.BR = n;
        this.tilt = 0.0f + f;
        f = f2;
        if ((double)f2 <= 0.0) {
            f = f2 % 360.0f + 360.0f;
        }
        this.bearing = f % 360.0f;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder builder(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
        return new Builder(streetViewPanoramaOrientation);
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
        if (!(object instanceof StreetViewPanoramaOrientation)) {
            return false;
        }
        object = (StreetViewPanoramaOrientation)object;
        if (Float.floatToIntBits(this.tilt) != Float.floatToIntBits(object.tilt)) return false;
        if (Float.floatToIntBits(this.bearing) == Float.floatToIntBits(object.bearing)) return true;
        return false;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(Float.valueOf(this.tilt), Float.valueOf(this.bearing));
    }

    public String toString() {
        return n.h(this).a("tilt", Float.valueOf(this.tilt)).a("bearing", Float.valueOf(this.bearing)).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        t.a(this, parcel, n);
    }

    public static final class Builder {
        public float bearing;
        public float tilt;

        public Builder() {
        }

        public Builder(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
            this.bearing = streetViewPanoramaOrientation.bearing;
            this.tilt = streetViewPanoramaOrientation.tilt;
        }

        public Builder bearing(float f) {
            this.bearing = f;
            return this;
        }

        public StreetViewPanoramaOrientation build() {
            return new StreetViewPanoramaOrientation(this.tilt, this.bearing);
        }

        public Builder tilt(float f) {
            this.tilt = f;
            return this;
        }
    }

}

