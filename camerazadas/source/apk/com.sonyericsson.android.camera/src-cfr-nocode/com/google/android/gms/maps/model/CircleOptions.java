/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.c;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class CircleOptions
implements SafeParcelable {
    public static final c CREATOR;
    private final int BR;
    private LatLng ajG;
    private double ajH;
    private float ajI;
    private int ajJ;
    private int ajK;
    private float ajL;
    private boolean ajM;

    static;

    public CircleOptions();

    CircleOptions(int var1, LatLng var2, double var3, float var5, int var6, int var7, float var8, boolean var9);

    public CircleOptions center(LatLng var1);

    @Override
    public int describeContents();

    public CircleOptions fillColor(int var1);

    public LatLng getCenter();

    public int getFillColor();

    public double getRadius();

    public int getStrokeColor();

    public float getStrokeWidth();

    int getVersionCode();

    public float getZIndex();

    public boolean isVisible();

    public CircleOptions radius(double var1);

    public CircleOptions strokeColor(int var1);

    public CircleOptions strokeWidth(float var1);

    public CircleOptions visible(boolean var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);

    public CircleOptions zIndex(float var1);
}

