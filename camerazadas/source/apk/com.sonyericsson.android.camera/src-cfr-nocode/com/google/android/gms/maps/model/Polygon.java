/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.internal.g;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public final class Polygon {
    private final g akk;

    public Polygon(g var1);

    public boolean equals(Object var1);

    public int getFillColor();

    public List<List<LatLng>> getHoles();

    public String getId();

    public List<LatLng> getPoints();

    public int getStrokeColor();

    public float getStrokeWidth();

    public float getZIndex();

    public int hashCode();

    public boolean isGeodesic();

    public boolean isVisible();

    public void remove();

    public void setFillColor(int var1);

    public void setGeodesic(boolean var1);

    public void setHoles(List<? extends List<LatLng>> var1);

    public void setPoints(List<LatLng> var1);

    public void setStrokeColor(int var1);

    public void setStrokeWidth(float var1);

    public void setVisible(boolean var1);

    public void setZIndex(float var1);
}

