/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.k;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class MarkerOptions
implements SafeParcelable {
    public static final k CREATOR;
    private final int BR;
    private String Nw;
    private boolean ajM;
    private float ajU;
    private float ajV;
    private LatLng ajl;
    private String akd;
    private BitmapDescriptor ake;
    private boolean akf;
    private boolean akg;
    private float akh;
    private float aki;
    private float akj;
    private float mAlpha;

    static;

    public MarkerOptions();

    MarkerOptions(int var1, LatLng var2, String var3, String var4, IBinder var5, float var6, float var7, boolean var8, boolean var9, boolean var10, float var11, float var12, float var13, float var14);

    public MarkerOptions alpha(float var1);

    public MarkerOptions anchor(float var1, float var2);

    @Override
    public int describeContents();

    public MarkerOptions draggable(boolean var1);

    public MarkerOptions flat(boolean var1);

    public float getAlpha();

    public float getAnchorU();

    public float getAnchorV();

    public BitmapDescriptor getIcon();

    public float getInfoWindowAnchorU();

    public float getInfoWindowAnchorV();

    public LatLng getPosition();

    public float getRotation();

    public String getSnippet();

    public String getTitle();

    int getVersionCode();

    public MarkerOptions icon(BitmapDescriptor var1);

    public MarkerOptions infoWindowAnchor(float var1, float var2);

    public boolean isDraggable();

    public boolean isFlat();

    public boolean isVisible();

    IBinder mP();

    public MarkerOptions position(LatLng var1);

    public MarkerOptions rotation(float var1);

    public MarkerOptions snippet(String var1);

    public MarkerOptions title(String var1);

    public MarkerOptions visible(boolean var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

