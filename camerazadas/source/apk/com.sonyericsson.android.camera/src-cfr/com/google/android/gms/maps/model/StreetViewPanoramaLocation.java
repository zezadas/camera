/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaLink;
import com.google.android.gms.maps.model.s;

public class StreetViewPanoramaLocation
implements SafeParcelable {
    public static final s CREATOR = new s();
    private final int BR;
    public final StreetViewPanoramaLink[] links;
    public final String panoId;
    public final LatLng position;

    StreetViewPanoramaLocation(int n, StreetViewPanoramaLink[] arrstreetViewPanoramaLink, LatLng latLng, String string) {
        this.BR = n;
        this.links = arrstreetViewPanoramaLink;
        this.position = latLng;
        this.panoId = string;
    }

    public StreetViewPanoramaLocation(StreetViewPanoramaLink[] arrstreetViewPanoramaLink, LatLng latLng, String string) {
        this(1, arrstreetViewPanoramaLink, latLng, string);
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
        if (!(object instanceof StreetViewPanoramaLocation)) {
            return false;
        }
        object = (StreetViewPanoramaLocation)object;
        if (!this.panoId.equals(object.panoId)) return false;
        if (this.position.equals(object.position)) return true;
        return false;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.position, this.panoId);
    }

    public String toString() {
        return n.h(this).a("panoId", this.panoId).a("position", this.position.toString()).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        s.a(this, parcel, n);
    }
}

