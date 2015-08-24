/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.content.Context;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.a;
import com.google.android.gms.maps.model.CameraPosition;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class GoogleMapOptions
implements SafeParcelable {
    public static final a CREATOR;
    private final int BR;
    private Boolean aiG;
    private Boolean aiH;
    private int aiI;
    private CameraPosition aiJ;
    private Boolean aiK;
    private Boolean aiL;
    private Boolean aiM;
    private Boolean aiN;
    private Boolean aiO;
    private Boolean aiP;

    static;

    public GoogleMapOptions();

    GoogleMapOptions(int var1, byte var2, byte var3, int var4, CameraPosition var5, byte var6, byte var7, byte var8, byte var9, byte var10, byte var11);

    public static GoogleMapOptions createFromAttributes(Context var0, AttributeSet var1);

    public GoogleMapOptions camera(CameraPosition var1);

    public GoogleMapOptions compassEnabled(boolean var1);

    @Override
    public int describeContents();

    public CameraPosition getCamera();

    public Boolean getCompassEnabled();

    public int getMapType();

    public Boolean getRotateGesturesEnabled();

    public Boolean getScrollGesturesEnabled();

    public Boolean getTiltGesturesEnabled();

    public Boolean getUseViewLifecycleInFragment();

    int getVersionCode();

    public Boolean getZOrderOnTop();

    public Boolean getZoomControlsEnabled();

    public Boolean getZoomGesturesEnabled();

    public GoogleMapOptions mapType(int var1);

    byte mr();

    byte ms();

    byte mt();

    byte mu();

    byte mv();

    byte mw();

    byte mx();

    byte my();

    public GoogleMapOptions rotateGesturesEnabled(boolean var1);

    public GoogleMapOptions scrollGesturesEnabled(boolean var1);

    public GoogleMapOptions tiltGesturesEnabled(boolean var1);

    public GoogleMapOptions useViewLifecycleInFragment(boolean var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);

    public GoogleMapOptions zOrderOnTop(boolean var1);

    public GoogleMapOptions zoomControlsEnabled(boolean var1);

    public GoogleMapOptions zoomGesturesEnabled(boolean var1);
}

