/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.m;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class PolygonOptions
implements SafeParcelable {
    public static final m CREATOR;
    private final int BR;
    private float ajI;
    private int ajJ;
    private int ajK;
    private float ajL;
    private boolean ajM;
    private final List<LatLng> akl;
    private final List<List<LatLng>> akm;
    private boolean akn;

    static;

    public PolygonOptions();

    PolygonOptions(int var1, List<LatLng> var2, List var3, float var4, int var5, int var6, float var7, boolean var8, boolean var9);

    public PolygonOptions add(LatLng var1);

    public /* varargs */ PolygonOptions add(LatLng ... var1);

    public PolygonOptions addAll(Iterable<LatLng> var1);

    public PolygonOptions addHole(Iterable<LatLng> var1);

    @Override
    public int describeContents();

    public PolygonOptions fillColor(int var1);

    public PolygonOptions geodesic(boolean var1);

    public int getFillColor();

    public List<List<LatLng>> getHoles();

    public List<LatLng> getPoints();

    public int getStrokeColor();

    public float getStrokeWidth();

    int getVersionCode();

    public float getZIndex();

    public boolean isGeodesic();

    public boolean isVisible();

    List mQ();

    public PolygonOptions strokeColor(int var1);

    public PolygonOptions strokeWidth(float var1);

    public PolygonOptions visible(boolean var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);

    public PolygonOptions zIndex(float var1);
}

