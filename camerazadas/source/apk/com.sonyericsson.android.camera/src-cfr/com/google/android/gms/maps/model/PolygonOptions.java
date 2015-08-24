/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.m;
import com.google.android.gms.maps.model.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class PolygonOptions
implements SafeParcelable {
    public static final m CREATOR = new m();
    private final int BR;
    private float ajI = 10.0f;
    private int ajJ = -16777216;
    private int ajK = 0;
    private float ajL = 0.0f;
    private boolean ajM = true;
    private final List<LatLng> akl;
    private final List<List<LatLng>> akm;
    private boolean akn = false;

    public PolygonOptions() {
        this.BR = 1;
        this.akl = new ArrayList<LatLng>();
        this.akm = new ArrayList<List<LatLng>>();
    }

    PolygonOptions(int n, List<LatLng> list, List list2, float f, int n2, int n3, float f2, boolean bl, boolean bl2) {
        this.BR = n;
        this.akl = list;
        this.akm = list2;
        this.ajI = f;
        this.ajJ = n2;
        this.ajK = n3;
        this.ajL = f2;
        this.ajM = bl;
        this.akn = bl2;
    }

    public PolygonOptions add(LatLng latLng) {
        this.akl.add(latLng);
        return this;
    }

    public /* varargs */ PolygonOptions add(LatLng ... arrlatLng) {
        this.akl.addAll(Arrays.asList(arrlatLng));
        return this;
    }

    public PolygonOptions addAll(Iterable<LatLng> object) {
        for (LatLng latLng : object) {
            this.akl.add(latLng);
        }
        return this;
    }

    public PolygonOptions addHole(Iterable<LatLng> object) {
        ArrayList<LatLng> arrayList = new ArrayList<LatLng>();
        object = object.iterator();
        while (object.hasNext()) {
            arrayList.add((LatLng)object.next());
        }
        this.akm.add(arrayList);
        return this;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public PolygonOptions fillColor(int n) {
        this.ajK = n;
        return this;
    }

    public PolygonOptions geodesic(boolean bl) {
        this.akn = bl;
        return this;
    }

    public int getFillColor() {
        return this.ajK;
    }

    public List<List<LatLng>> getHoles() {
        return this.akm;
    }

    public List<LatLng> getPoints() {
        return this.akl;
    }

    public int getStrokeColor() {
        return this.ajJ;
    }

    public float getStrokeWidth() {
        return this.ajI;
    }

    int getVersionCode() {
        return this.BR;
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

    List mQ() {
        return this.akm;
    }

    public PolygonOptions strokeColor(int n) {
        this.ajJ = n;
        return this;
    }

    public PolygonOptions strokeWidth(float f) {
        this.ajI = f;
        return this;
    }

    public PolygonOptions visible(boolean bl) {
        this.ajM = bl;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (v.mM()) {
            n.a(this, parcel, n);
            return;
        }
        m.a(this, parcel, n);
    }

    public PolygonOptions zIndex(float f) {
        this.ajL = f;
        return this;
    }
}

