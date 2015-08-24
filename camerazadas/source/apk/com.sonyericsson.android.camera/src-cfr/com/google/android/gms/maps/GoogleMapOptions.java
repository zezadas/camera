/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.a;
import com.google.android.gms.maps.b;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.CameraPosition;

public final class GoogleMapOptions
implements SafeParcelable {
    public static final a CREATOR = new a();
    private final int BR;
    private Boolean aiG;
    private Boolean aiH;
    private int aiI = -1;
    private CameraPosition aiJ;
    private Boolean aiK;
    private Boolean aiL;
    private Boolean aiM;
    private Boolean aiN;
    private Boolean aiO;
    private Boolean aiP;

    public GoogleMapOptions() {
        this.BR = 1;
    }

    GoogleMapOptions(int n, byte by, byte by2, int n2, CameraPosition cameraPosition, byte by3, byte by4, byte by5, byte by6, byte by7, byte by8) {
        this.BR = n;
        this.aiG = com.google.android.gms.maps.internal.a.a(by);
        this.aiH = com.google.android.gms.maps.internal.a.a(by2);
        this.aiI = n2;
        this.aiJ = cameraPosition;
        this.aiK = com.google.android.gms.maps.internal.a.a(by3);
        this.aiL = com.google.android.gms.maps.internal.a.a(by4);
        this.aiM = com.google.android.gms.maps.internal.a.a(by5);
        this.aiN = com.google.android.gms.maps.internal.a.a(by6);
        this.aiO = com.google.android.gms.maps.internal.a.a(by7);
        this.aiP = com.google.android.gms.maps.internal.a.a(by8);
    }

    public static GoogleMapOptions createFromAttributes(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        TypedArray typedArray = context.getResources().obtainAttributes(attributeSet, R.styleable.MapAttrs);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        if (typedArray.hasValue(R.styleable.MapAttrs_mapType)) {
            googleMapOptions.mapType(typedArray.getInt(R.styleable.MapAttrs_mapType, -1));
        }
        if (typedArray.hasValue(R.styleable.MapAttrs_zOrderOnTop)) {
            googleMapOptions.zOrderOnTop(typedArray.getBoolean(R.styleable.MapAttrs_zOrderOnTop, false));
        }
        if (typedArray.hasValue(R.styleable.MapAttrs_useViewLifecycle)) {
            googleMapOptions.useViewLifecycleInFragment(typedArray.getBoolean(R.styleable.MapAttrs_useViewLifecycle, false));
        }
        if (typedArray.hasValue(R.styleable.MapAttrs_uiCompass)) {
            googleMapOptions.compassEnabled(typedArray.getBoolean(R.styleable.MapAttrs_uiCompass, true));
        }
        if (typedArray.hasValue(R.styleable.MapAttrs_uiRotateGestures)) {
            googleMapOptions.rotateGesturesEnabled(typedArray.getBoolean(R.styleable.MapAttrs_uiRotateGestures, true));
        }
        if (typedArray.hasValue(R.styleable.MapAttrs_uiScrollGestures)) {
            googleMapOptions.scrollGesturesEnabled(typedArray.getBoolean(R.styleable.MapAttrs_uiScrollGestures, true));
        }
        if (typedArray.hasValue(R.styleable.MapAttrs_uiTiltGestures)) {
            googleMapOptions.tiltGesturesEnabled(typedArray.getBoolean(R.styleable.MapAttrs_uiTiltGestures, true));
        }
        if (typedArray.hasValue(R.styleable.MapAttrs_uiZoomGestures)) {
            googleMapOptions.zoomGesturesEnabled(typedArray.getBoolean(R.styleable.MapAttrs_uiZoomGestures, true));
        }
        if (typedArray.hasValue(R.styleable.MapAttrs_uiZoomControls)) {
            googleMapOptions.zoomControlsEnabled(typedArray.getBoolean(R.styleable.MapAttrs_uiZoomControls, true));
        }
        googleMapOptions.camera(CameraPosition.createFromAttributes(context, attributeSet));
        typedArray.recycle();
        return googleMapOptions;
    }

    public GoogleMapOptions camera(CameraPosition cameraPosition) {
        this.aiJ = cameraPosition;
        return this;
    }

    public GoogleMapOptions compassEnabled(boolean bl) {
        this.aiL = bl;
        return this;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public CameraPosition getCamera() {
        return this.aiJ;
    }

    public Boolean getCompassEnabled() {
        return this.aiL;
    }

    public int getMapType() {
        return this.aiI;
    }

    public Boolean getRotateGesturesEnabled() {
        return this.aiP;
    }

    public Boolean getScrollGesturesEnabled() {
        return this.aiM;
    }

    public Boolean getTiltGesturesEnabled() {
        return this.aiO;
    }

    public Boolean getUseViewLifecycleInFragment() {
        return this.aiH;
    }

    int getVersionCode() {
        return this.BR;
    }

    public Boolean getZOrderOnTop() {
        return this.aiG;
    }

    public Boolean getZoomControlsEnabled() {
        return this.aiK;
    }

    public Boolean getZoomGesturesEnabled() {
        return this.aiN;
    }

    public GoogleMapOptions mapType(int n) {
        this.aiI = n;
        return this;
    }

    byte mr() {
        return com.google.android.gms.maps.internal.a.c(this.aiG);
    }

    byte ms() {
        return com.google.android.gms.maps.internal.a.c(this.aiH);
    }

    byte mt() {
        return com.google.android.gms.maps.internal.a.c(this.aiK);
    }

    byte mu() {
        return com.google.android.gms.maps.internal.a.c(this.aiL);
    }

    byte mv() {
        return com.google.android.gms.maps.internal.a.c(this.aiM);
    }

    byte mw() {
        return com.google.android.gms.maps.internal.a.c(this.aiN);
    }

    byte mx() {
        return com.google.android.gms.maps.internal.a.c(this.aiO);
    }

    byte my() {
        return com.google.android.gms.maps.internal.a.c(this.aiP);
    }

    public GoogleMapOptions rotateGesturesEnabled(boolean bl) {
        this.aiP = bl;
        return this;
    }

    public GoogleMapOptions scrollGesturesEnabled(boolean bl) {
        this.aiM = bl;
        return this;
    }

    public GoogleMapOptions tiltGesturesEnabled(boolean bl) {
        this.aiO = bl;
        return this;
    }

    public GoogleMapOptions useViewLifecycleInFragment(boolean bl) {
        this.aiH = bl;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (v.mM()) {
            b.a(this, parcel, n);
            return;
        }
        a.a(this, parcel, n);
    }

    public GoogleMapOptions zOrderOnTop(boolean bl) {
        this.aiG = bl;
        return this;
    }

    public GoogleMapOptions zoomControlsEnabled(boolean bl) {
        this.aiK = bl;
        return this;
    }

    public GoogleMapOptions zoomGesturesEnabled(boolean bl) {
        this.aiN = bl;
        return this;
    }
}

