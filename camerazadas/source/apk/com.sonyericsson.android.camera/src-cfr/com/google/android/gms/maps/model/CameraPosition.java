/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.a;
import com.google.android.gms.maps.model.b;

public final class CameraPosition
implements SafeParcelable {
    public static final a CREATOR = new a();
    private final int BR;
    public final float bearing;
    public final LatLng target;
    public final float tilt;
    public final float zoom;

    /*
     * Enabled aggressive block sorting
     */
    CameraPosition(int n, LatLng latLng, float f, float f2, float f3) {
        o.b(latLng, (Object)"null camera target");
        boolean bl = 0.0f <= f2 && f2 <= 90.0f;
        o.b(bl, (Object)"Tilt needs to be between 0 and 90 inclusive");
        this.BR = n;
        this.target = latLng;
        this.zoom = f;
        this.tilt = f2 + 0.0f;
        f = f3;
        if ((double)f3 <= 0.0) {
            f = f3 % 360.0f + 360.0f;
        }
        this.bearing = f % 360.0f;
    }

    public CameraPosition(LatLng latLng, float f, float f2, float f3) {
        this(1, latLng, f, f2, f3);
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder builder(CameraPosition cameraPosition) {
        return new Builder(cameraPosition);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static CameraPosition createFromAttributes(Context object, AttributeSet object2) {
        if (object2 == null) {
            return null;
        }
        float f = (object = object.getResources().obtainAttributes((AttributeSet)object2, R.styleable.MapAttrs)).hasValue(R.styleable.MapAttrs_cameraTargetLat) ? object.getFloat(R.styleable.MapAttrs_cameraTargetLat, 0.0f) : 0.0f;
        float f2 = object.hasValue(R.styleable.MapAttrs_cameraTargetLng) ? object.getFloat(R.styleable.MapAttrs_cameraTargetLng, 0.0f) : 0.0f;
        object2 = new LatLng(f, f2);
        Builder builder = CameraPosition.builder();
        builder.target((LatLng)object2);
        if (object.hasValue(R.styleable.MapAttrs_cameraZoom)) {
            builder.zoom(object.getFloat(R.styleable.MapAttrs_cameraZoom, 0.0f));
        }
        if (object.hasValue(R.styleable.MapAttrs_cameraBearing)) {
            builder.bearing(object.getFloat(R.styleable.MapAttrs_cameraBearing, 0.0f));
        }
        if (object.hasValue(R.styleable.MapAttrs_cameraTilt)) {
            builder.tilt(object.getFloat(R.styleable.MapAttrs_cameraTilt, 0.0f));
        }
        return builder.build();
    }

    public static final CameraPosition fromLatLngZoom(LatLng latLng, float f) {
        return new CameraPosition(latLng, f, 0.0f, 0.0f);
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
        if (!(object instanceof CameraPosition)) {
            return false;
        }
        object = (CameraPosition)object;
        if (!this.target.equals(object.target)) return false;
        if (Float.floatToIntBits(this.zoom) != Float.floatToIntBits(object.zoom)) return false;
        if (Float.floatToIntBits(this.tilt) != Float.floatToIntBits(object.tilt)) return false;
        if (Float.floatToIntBits(this.bearing) == Float.floatToIntBits(object.bearing)) return true;
        return false;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.target, Float.valueOf(this.zoom), Float.valueOf(this.tilt), Float.valueOf(this.bearing));
    }

    public String toString() {
        return n.h(this).a("target", this.target).a("zoom", Float.valueOf(this.zoom)).a("tilt", Float.valueOf(this.tilt)).a("bearing", Float.valueOf(this.bearing)).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (v.mM()) {
            b.a(this, parcel, n);
            return;
        }
        a.a(this, parcel, n);
    }

    public static final class Builder {
        private LatLng ajB;
        private float ajC;
        private float ajD;
        private float ajE;

        public Builder() {
        }

        public Builder(CameraPosition cameraPosition) {
            this.ajB = cameraPosition.target;
            this.ajC = cameraPosition.zoom;
            this.ajD = cameraPosition.tilt;
            this.ajE = cameraPosition.bearing;
        }

        public Builder bearing(float f) {
            this.ajE = f;
            return this;
        }

        public CameraPosition build() {
            return new CameraPosition(this.ajB, this.ajC, this.ajD, this.ajE);
        }

        public Builder target(LatLng latLng) {
            this.ajB = latLng;
            return this;
        }

        public Builder tilt(float f) {
            this.ajD = f;
            return this;
        }

        public Builder zoom(float f) {
            this.ajC = f;
            return this;
        }
    }

}

