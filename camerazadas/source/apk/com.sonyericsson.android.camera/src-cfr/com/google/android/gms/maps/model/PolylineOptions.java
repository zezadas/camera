/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.o;
import com.google.android.gms.maps.model.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public final class PolylineOptions
implements SafeParcelable {
    public static final o CREATOR = new o();
    private final int BR;
    private float ajL = 0.0f;
    private boolean ajM = true;
    private float ajQ = 10.0f;
    private final List<LatLng> akl;
    private boolean akn = false;
    private int mColor = -16777216;

    public PolylineOptions() {
        this.BR = 1;
        this.akl = new ArrayList<LatLng>();
    }

    PolylineOptions(int n, List list, float f, int n2, float f2, boolean bl, boolean bl2) {
        this.BR = n;
        this.akl = list;
        this.ajQ = f;
        this.mColor = n2;
        this.ajL = f2;
        this.ajM = bl;
        this.akn = bl2;
    }

    public PolylineOptions add(LatLng latLng) {
        this.akl.add(latLng);
        return this;
    }

    public /* varargs */ PolylineOptions add(LatLng ... arrlatLng) {
        this.akl.addAll(Arrays.asList(arrlatLng));
        return this;
    }

    public PolylineOptions addAll(Iterable<LatLng> object) {
        for (LatLng latLng : object) {
            this.akl.add(latLng);
        }
        return this;
    }

    public PolylineOptions color(int n) {
        this.mColor = n;
        return this;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public PolylineOptions geodesic(boolean bl) {
        this.akn = bl;
        return this;
    }

    public int getColor() {
        return this.mColor;
    }

    public List<LatLng> getPoints() {
        return this.akl;
    }

    int getVersionCode() {
        return this.BR;
    }

    public float getWidth() {
        return this.ajQ;
    }

    public float getZIndex() {
        return this.ajL;
    }

    public boolean isGeodesic() {
        return this.akn;
    }

    public boolean isVisible() {
        return this.ajM;
    }

    public PolylineOptions visible(boolean bl) {
        this.ajM = bl;
        return this;
    }

    public PolylineOptions width(float f) {
        this.ajQ = f;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (v.mM()) {
            p.a(this, parcel, n);
            return;
        }
        o.a(this, parcel, n);
    }

    public PolylineOptions zIndex(float f) {
        this.ajL = f;
        return this;
    }
}

