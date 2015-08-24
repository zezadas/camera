/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.internal.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public final class StreetViewPanoramaOptions
implements SafeParcelable {
    public static final c CREATOR = new c();
    private final int BR;
    private Boolean aiH;
    private Boolean aiN = true;
    private StreetViewPanoramaCamera ajj;
    private String ajk;
    private LatLng ajl;
    private Integer ajm;
    private Boolean ajn = true;
    private Boolean ajo = true;
    private Boolean ajp = true;

    public StreetViewPanoramaOptions() {
        this.BR = 1;
    }

    StreetViewPanoramaOptions(int n, StreetViewPanoramaCamera streetViewPanoramaCamera, String string, LatLng latLng, Integer n2, byte by, byte by2, byte by3, byte by4, byte by5) {
        this.BR = n;
        this.ajj = streetViewPanoramaCamera;
        this.ajl = latLng;
        this.ajm = n2;
        this.ajk = string;
        this.ajn = a.a(by);
        this.aiN = a.a(by2);
        this.ajo = a.a(by3);
        this.ajp = a.a(by4);
        this.aiH = a.a(by5);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Boolean getPanningGesturesEnabled() {
        return this.ajo;
    }

    public String getPanoramaId() {
        return this.ajk;
    }

    public LatLng getPosition() {
        return this.ajl;
    }

    public Integer getRadius() {
        return this.ajm;
    }

    public Boolean getStreetNamesEnabled() {
        return this.ajp;
    }

    public StreetViewPanoramaCamera getStreetViewPanoramaCamera() {
        return this.ajj;
    }

    public Boolean getUseViewLifecycleInFragment() {
        return this.aiH;
    }

    public Boolean getUserNavigationEnabled() {
        return this.ajn;
    }

    int getVersionCode() {
        return this.BR;
    }

    public Boolean getZoomGesturesEnabled() {
        return this.aiN;
    }

    byte mE() {
        return a.c(this.ajn);
    }

    byte mF() {
        return a.c(this.ajo);
    }

    byte mG() {
        return a.c(this.ajp);
    }

    byte ms() {
        return a.c(this.aiH);
    }

    byte mw() {
        return a.c(this.aiN);
    }

    public StreetViewPanoramaOptions panningGesturesEnabled(boolean bl) {
        this.ajo = bl;
        return this;
    }

    public StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        this.ajj = streetViewPanoramaCamera;
        return this;
    }

    public StreetViewPanoramaOptions panoramaId(String string) {
        this.ajk = string;
        return this;
    }

    public StreetViewPanoramaOptions position(LatLng latLng) {
        this.ajl = latLng;
        return this;
    }

    public StreetViewPanoramaOptions position(LatLng latLng, Integer n) {
        this.ajl = latLng;
        this.ajm = n;
        return this;
    }

    public StreetViewPanoramaOptions streetNamesEnabled(boolean bl) {
        this.ajp = bl;
        return this;
    }

    public StreetViewPanoramaOptions useViewLifecycleInFragment(boolean bl) {
        this.aiH = bl;
        return this;
    }

    public StreetViewPanoramaOptions userNavigationEnabled(boolean bl) {
        this.ajn = bl;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }

    public StreetViewPanoramaOptions zoomGesturesEnabled(boolean bl) {
        this.aiN = bl;
        return this;
    }
}

