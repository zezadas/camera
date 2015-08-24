/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.k;
import com.google.android.gms.maps.model.l;

public final class MarkerOptions
implements SafeParcelable {
    public static final k CREATOR = new k();
    private final int BR;
    private String Nw;
    private boolean ajM = true;
    private float ajU = 0.5f;
    private float ajV = 1.0f;
    private LatLng ajl;
    private String akd;
    private BitmapDescriptor ake;
    private boolean akf;
    private boolean akg = false;
    private float akh = 0.0f;
    private float aki = 0.5f;
    private float akj = 0.0f;
    private float mAlpha = 1.0f;

    public MarkerOptions() {
        this.BR = 1;
    }

    /*
     * Enabled aggressive block sorting
     */
    MarkerOptions(int n, LatLng object, String string, String string2, IBinder iBinder, float f, float f2, boolean bl, boolean bl2, boolean bl3, float f3, float f4, float f5, float f6) {
        this.BR = n;
        this.ajl = object;
        this.Nw = string;
        this.akd = string2;
        object = iBinder == null ? null : new BitmapDescriptor(d.a.am(iBinder));
        this.ake = object;
        this.ajU = f;
        this.ajV = f2;
        this.akf = bl;
        this.ajM = bl2;
        this.akg = bl3;
        this.akh = f3;
        this.aki = f4;
        this.akj = f5;
        this.mAlpha = f6;
    }

    public MarkerOptions alpha(float f) {
        this.mAlpha = f;
        return this;
    }

    public MarkerOptions anchor(float f, float f2) {
        this.ajU = f;
        this.ajV = f2;
        return this;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public MarkerOptions draggable(boolean bl) {
        this.akf = bl;
        return this;
    }

    public MarkerOptions flat(boolean bl) {
        this.akg = bl;
        return this;
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public float getAnchorU() {
        return this.ajU;
    }

    public float getAnchorV() {
        return this.ajV;
    }

    public BitmapDescriptor getIcon() {
        return this.ake;
    }

    public float getInfoWindowAnchorU() {
        return this.aki;
    }

    public float getInfoWindowAnchorV() {
        return this.akj;
    }

    public LatLng getPosition() {
        return this.ajl;
    }

    public float getRotation() {
        return this.akh;
    }

    public String getSnippet() {
        return this.akd;
    }

    public String getTitle() {
        return this.Nw;
    }

    int getVersionCode() {
        return this.BR;
    }

    public MarkerOptions icon(BitmapDescriptor bitmapDescriptor) {
        this.ake = bitmapDescriptor;
        return this;
    }

    public MarkerOptions infoWindowAnchor(float f, float f2) {
        this.aki = f;
        this.akj = f2;
        return this;
    }

    public boolean isDraggable() {
        return this.akf;
    }

    public boolean isFlat() {
        return this.akg;
    }

    public boolean isVisible() {
        return this.ajM;
    }

    IBinder mP() {
        if (this.ake == null) {
            return null;
        }
        return this.ake.mo().asBinder();
    }

    public MarkerOptions position(LatLng latLng) {
        this.ajl = latLng;
        return this;
    }

    public MarkerOptions rotation(float f) {
        this.akh = f;
        return this;
    }

    public MarkerOptions snippet(String string) {
        this.akd = string;
        return this;
    }

    public MarkerOptions title(String string) {
        this.Nw = string;
        return this;
    }

    public MarkerOptions visible(boolean bl) {
        this.ajM = bl;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (v.mM()) {
            l.a(this, parcel, n);
            return;
        }
        k.a(this, parcel, n);
    }
}

