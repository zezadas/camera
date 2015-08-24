/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.r;

public class StreetViewPanoramaLink
implements SafeParcelable {
    public static final r CREATOR = new r();
    private final int BR;
    public final float bearing;
    public final String panoId;

    StreetViewPanoramaLink(int n, String string, float f) {
        this.BR = n;
        this.panoId = string;
        float f2 = f;
        if ((double)f <= 0.0) {
            f2 = f % 360.0f + 360.0f;
        }
        this.bearing = f2 % 360.0f;
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
        if (!(object instanceof StreetViewPanoramaLink)) {
            return false;
        }
        object = (StreetViewPanoramaLink)object;
        if (!this.panoId.equals(object.panoId)) return false;
        if (Float.floatToIntBits(this.bearing) == Float.floatToIntBits(object.bearing)) return true;
        return false;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.panoId, Float.valueOf(this.bearing));
    }

    public String toString() {
        return n.h(this).a("panoId", this.panoId).a("bearing", Float.valueOf(this.bearing)).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        r.a(this, parcel, n);
    }
}

