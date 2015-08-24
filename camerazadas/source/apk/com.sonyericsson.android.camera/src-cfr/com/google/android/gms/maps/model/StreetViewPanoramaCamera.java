/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
import com.google.android.gms.maps.model.q;

public class StreetViewPanoramaCamera
implements SafeParcelable {
    public static final q CREATOR = new q();
    private final int BR;
    private StreetViewPanoramaOrientation akp;
    public final float bearing;
    public final float tilt;
    public final float zoom;

    public StreetViewPanoramaCamera(float f, float f2, float f3) {
        this(1, f, f2, f3);
    }

    /*
     * Enabled aggressive block sorting
     */
    StreetViewPanoramaCamera(int n, float f, float f2, float f3) {
        boolean bl = -90.0f <= f2 && f2 <= 90.0f;
        o.b(bl, (Object)"Tilt needs to be between -90 and 90 inclusive");
        this.BR = n;
        this.zoom = f;
        this.tilt = 0.0f + f2;
        f = (double)f3 <= 0.0 ? f3 % 360.0f + 360.0f : f3;
        this.bearing = f % 360.0f;
        this.akp = new StreetViewPanoramaOrientation.Builder().tilt(f2).bearing(f3).build();
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder builder(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        return new Builder(streetViewPanoramaCamera);
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
        if (!(object instanceof StreetViewPanoramaCamera)) {
            return false;
        }
        object = (StreetViewPanoramaCamera)object;
        if (Float.floatToIntBits(this.zoom) != Float.floatToIntBits(object.zoom)) return false;
        if (Float.floatToIntBits(this.tilt) != Float.floatToIntBits(object.tilt)) return false;
        if (Float.floatToIntBits(this.bearing) == Float.floatToIntBits(object.bearing)) return true;
        return false;
    }

    public StreetViewPanoramaOrientation getOrientation() {
        return this.akp;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(Float.valueOf(this.zoom), Float.valueOf(this.tilt), Float.valueOf(this.bearing));
    }

    public String toString() {
        return n.h(this).a("zoom", Float.valueOf(this.zoom)).a("tilt", Float.valueOf(this.tilt)).a("bearing", Float.valueOf(this.bearing)).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        q.a(this, parcel, n);
    }

    public static final class Builder {
        public float bearing;
        public float tilt;
        public float zoom;

        public Builder() {
        }

        public Builder(StreetViewPanoramaCamera streetViewPanoramaCamera) {
            this.zoom = streetViewPanoramaCamera.zoom;
            this.bearing = streetViewPanoramaCamera.bearing;
            this.tilt = streetViewPanoramaCamera.tilt;
        }

        public Builder bearing(float f) {
            this.bearing = f;
            return this;
        }

        public StreetViewPanoramaCamera build() {
            return new StreetViewPanoramaCamera(this.zoom, this.tilt, this.bearing);
        }

        public Builder orientation(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
            this.tilt = streetViewPanoramaOrientation.tilt;
            this.bearing = streetViewPanoramaOrientation.bearing;
            return this;
        }

        public Builder tilt(float f) {
            this.tilt = f;
            return this;
        }

        public Builder zoom(float f) {
            this.zoom = f;
            return this;
        }
    }

}

