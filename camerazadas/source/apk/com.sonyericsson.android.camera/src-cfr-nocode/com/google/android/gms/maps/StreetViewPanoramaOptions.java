/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class StreetViewPanoramaOptions
implements SafeParcelable {
    public static final c CREATOR;
    private final int BR;
    private Boolean aiH;
    private Boolean aiN;
    private StreetViewPanoramaCamera ajj;
    private String ajk;
    private LatLng ajl;
    private Integer ajm;
    private Boolean ajn;
    private Boolean ajo;
    private Boolean ajp;

    static;

    public StreetViewPanoramaOptions();

    StreetViewPanoramaOptions(int var1, StreetViewPanoramaCamera var2, String var3, LatLng var4, Integer var5, byte var6, byte var7, byte var8, byte var9, byte var10);

    @Override
    public int describeContents();

    public Boolean getPanningGesturesEnabled();

    public String getPanoramaId();

    public LatLng getPosition();

    public Integer getRadius();

    public Boolean getStreetNamesEnabled();

    public StreetViewPanoramaCamera getStreetViewPanoramaCamera();

    public Boolean getUseViewLifecycleInFragment();

    public Boolean getUserNavigationEnabled();

    int getVersionCode();

    public Boolean getZoomGesturesEnabled();

    byte mE();

    byte mF();

    byte mG();

    byte ms();

    byte mw();

    public StreetViewPanoramaOptions panningGesturesEnabled(boolean var1);

    public StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera var1);

    public StreetViewPanoramaOptions panoramaId(String var1);

    public StreetViewPanoramaOptions position(LatLng var1);

    public StreetViewPanoramaOptions position(LatLng var1, Integer var2);

    public StreetViewPanoramaOptions streetNamesEnabled(boolean var1);

    public StreetViewPanoramaOptions useViewLifecycleInFragment(boolean var1);

    public StreetViewPanoramaOptions userNavigationEnabled(boolean var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);

    public StreetViewPanoramaOptions zoomGesturesEnabled(boolean var1);
}

