/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.e;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class GroundOverlayOptions
implements SafeParcelable {
    public static final e CREATOR;
    public static final float NO_DIMENSION = -1.0f;
    private final int BR;
    private float ajE;
    private float ajL;
    private boolean ajM;
    private BitmapDescriptor ajO;
    private LatLng ajP;
    private float ajQ;
    private float ajR;
    private LatLngBounds ajS;
    private float ajT;
    private float ajU;
    private float ajV;

    static;

    public GroundOverlayOptions();

    GroundOverlayOptions(int var1, IBinder var2, LatLng var3, float var4, float var5, LatLngBounds var6, float var7, float var8, boolean var9, float var10, float var11, float var12);

    private GroundOverlayOptions a(LatLng var1, float var2, float var3);

    public GroundOverlayOptions anchor(float var1, float var2);

    public GroundOverlayOptions bearing(float var1);

    @Override
    public int describeContents();

    public float getAnchorU();

    public float getAnchorV();

    public float getBearing();

    public LatLngBounds getBounds();

    public float getHeight();

    public BitmapDescriptor getImage();

    public LatLng getLocation();

    public float getTransparency();

    int getVersionCode();

    public float getWidth();

    public float getZIndex();

    public GroundOverlayOptions image(BitmapDescriptor var1);

    public boolean isVisible();

    IBinder mO();

    public GroundOverlayOptions position(LatLng var1, float var2);

    public GroundOverlayOptions position(LatLng var1, float var2, float var3);

    public GroundOverlayOptions positionFromBounds(LatLngBounds var1);

    public GroundOverlayOptions transparency(float var1);

    public GroundOverlayOptions visible(boolean var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);

    public GroundOverlayOptions zIndex(float var1);
}

