/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public final class Polyline {
    private final IPolylineDelegate ako;

    public Polyline(IPolylineDelegate var1);

    public boolean equals(Object var1);

    public int getColor();

    public String getId();

    public List<LatLng> getPoints();

    public float getWidth();

    public float getZIndex();

    public int hashCode();

    public boolean isGeodesic();

    public boolean isVisible();

    public void remove();

    public void setColor(int var1);

    public void setGeodesic(boolean var1);

    public void setPoints(List<LatLng> var1);

    public void setVisible(boolean var1);

    public void setWidth(float var1);

    public void setZIndex(float var1);
}

