/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.o;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class PolylineOptions
implements SafeParcelable {
    public static final o CREATOR;
    private final int BR;
    private float ajL;
    private boolean ajM;
    private float ajQ;
    private final List<LatLng> akl;
    private boolean akn;
    private int mColor;

    static;

    public PolylineOptions();

    PolylineOptions(int var1, List var2, float var3, int var4, float var5, boolean var6, boolean var7);

    public PolylineOptions add(LatLng var1);

    public /* varargs */ PolylineOptions add(LatLng ... var1);

    public PolylineOptions addAll(Iterable<LatLng> var1);

    public PolylineOptions color(int var1);

    @Override
    public int describeContents();

    public PolylineOptions geodesic(boolean var1);

    public int getColor();

    public List<LatLng> getPoints();

    int getVersionCode();

    public float getWidth();

    public float getZIndex();

    public boolean isGeodesic();

    public boolean isVisible();

    public PolylineOptions visible(boolean var1);

    public PolylineOptions width(float var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);

    public PolylineOptions zIndex(float var1);
}

