/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.c;
import com.google.android.gms.maps.model.d;

public final class CircleOptions
implements SafeParcelable {
    public static final c CREATOR = new c();
    private final int BR;
    private LatLng ajG = null;
    private double ajH = 0.0;
    private float ajI = 10.0f;
    private int ajJ = -16777216;
    private int ajK = 0;
    private float ajL = 0.0f;
    private boolean ajM = true;

    public CircleOptions() {
        this.BR = 1;
    }

    CircleOptions(int n, LatLng latLng, double d, float f, int n2, int n3, float f2, boolean bl) {
        this.BR = n;
        this.ajG = latLng;
        this.ajH = d;
        this.ajI = f;
        this.ajJ = n2;
        this.ajK = n3;
        this.ajL = f2;
        this.ajM = bl;
    }

    public CircleOptions center(LatLng latLng) {
        this.ajG = latLng;
        return this;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public CircleOptions fillColor(int n) {
        this.ajK = n;
        return this;
    }

    public LatLng getCenter() {
        return this.ajG;
    }

    public int getFillColor() {
        return this.ajK;
    }

    public double getRadius() {
        return this.ajH;
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

    public boolean isVisible() {
        return this.ajM;
    }

    public CircleOptions radius(double d) {
        this.ajH = d;
        return this;
    }

    public CircleOptions strokeColor(int n) {
        this.ajJ = n;
        return this;
    }

    public CircleOptions strokeWidth(float f) {
        this.ajI = f;
        return this;
    }

    public CircleOptions visible(boolean bl) {
        this.ajM = bl;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (v.mM()) {
            d.a(this, parcel, n);
            return;
        }
        c.a(this, parcel, n);
    }

    public CircleOptions zIndex(float f) {
        this.ajL = f;
        return this;
    }
}

