/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.e;
import com.google.android.gms.maps.model.f;

public final class GroundOverlayOptions
implements SafeParcelable {
    public static final e CREATOR = new e();
    public static final float NO_DIMENSION = -1.0f;
    private final int BR;
    private float ajE;
    private float ajL;
    private boolean ajM = true;
    private BitmapDescriptor ajO;
    private LatLng ajP;
    private float ajQ;
    private float ajR;
    private LatLngBounds ajS;
    private float ajT = 0.0f;
    private float ajU = 0.5f;
    private float ajV = 0.5f;

    public GroundOverlayOptions() {
        this.BR = 1;
    }

    GroundOverlayOptions(int n, IBinder iBinder, LatLng latLng, float f, float f2, LatLngBounds latLngBounds, float f3, float f4, boolean bl, float f5, float f6, float f7) {
        this.BR = n;
        this.ajO = new BitmapDescriptor(d.a.am(iBinder));
        this.ajP = latLng;
        this.ajQ = f;
        this.ajR = f2;
        this.ajS = latLngBounds;
        this.ajE = f3;
        this.ajL = f4;
        this.ajM = bl;
        this.ajT = f5;
        this.ajU = f6;
        this.ajV = f7;
    }

    private GroundOverlayOptions a(LatLng latLng, float f, float f2) {
        this.ajP = latLng;
        this.ajQ = f;
        this.ajR = f2;
        return this;
    }

    public GroundOverlayOptions anchor(float f, float f2) {
        this.ajU = f;
        this.ajV = f2;
        return this;
    }

    public GroundOverlayOptions bearing(float f) {
        this.ajE = (f % 360.0f + 360.0f) % 360.0f;
        return this;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public float getAnchorU() {
        return this.ajU;
    }

    public float getAnchorV() {
        return this.ajV;
    }

    public float getBearing() {
        return this.ajE;
    }

    public LatLngBounds getBounds() {
        return this.ajS;
    }

    public float getHeight() {
        return this.ajR;
    }

    public BitmapDescriptor getImage() {
        return this.ajO;
    }

    public LatLng getLocation() {
        return this.ajP;
    }

    public float getTransparency() {
        return this.ajT;
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

    public GroundOverlayOptions image(BitmapDescriptor bitmapDescriptor) {
        this.ajO = bitmapDescriptor;
        return this;
    }

    public boolean isVisible() {
        return this.ajM;
    }

    IBinder mO() {
        return this.ajO.mo().asBinder();
    }

    /*
     * Enabled aggressive block sorting
     */
    public GroundOverlayOptions position(LatLng latLng, float f) {
        boolean bl = true;
        boolean bl2 = this.ajS == null;
        o.a(bl2, "Position has already been set using positionFromBounds");
        bl2 = latLng != null;
        o.b(bl2, (Object)"Location must be specified");
        bl2 = f >= 0.0f ? bl : false;
        o.b(bl2, (Object)"Width must be non-negative");
        return this.a(latLng, f, -1.0f);
    }

    /*
     * Enabled aggressive block sorting
     */
    public GroundOverlayOptions position(LatLng latLng, float f, float f2) {
        boolean bl = true;
        boolean bl2 = this.ajS == null;
        o.a(bl2, "Position has already been set using positionFromBounds");
        bl2 = latLng != null;
        o.b(bl2, (Object)"Location must be specified");
        bl2 = f >= 0.0f;
        o.b(bl2, (Object)"Width must be non-negative");
        bl2 = f2 >= 0.0f ? bl : false;
        o.b(bl2, (Object)"Height must be non-negative");
        return this.a(latLng, f, f2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        boolean bl = this.ajP == null;
        o.a(bl, "Position has already been set using position: " + this.ajP);
        this.ajS = latLngBounds;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public GroundOverlayOptions transparency(float f) {
        boolean bl = f >= 0.0f && f <= 1.0f;
        o.b(bl, (Object)"Transparency must be in the range [0..1]");
        this.ajT = f;
        return this;
    }

    public GroundOverlayOptions visible(boolean bl) {
        this.ajM = bl;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (v.mM()) {
            f.a(this, parcel, n);
            return;
        }
        e.a(this, parcel, n);
    }

    public GroundOverlayOptions zIndex(float f) {
        this.ajL = f;
        return this;
    }
}

