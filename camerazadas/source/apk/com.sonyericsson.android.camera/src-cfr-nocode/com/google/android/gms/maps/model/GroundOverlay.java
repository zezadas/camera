/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.internal.c;

/*
 * Exception performing whole class analysis.
 */
public final class GroundOverlay {
    private final c ajN;

    public GroundOverlay(c var1);

    public boolean equals(Object var1);

    public float getBearing();

    public LatLngBounds getBounds();

    public float getHeight();

    public String getId();

    public LatLng getPosition();

    public float getTransparency();

    public float getWidth();

    public float getZIndex();

    public int hashCode();

    public boolean isVisible();

    public void remove();

    public void setBearing(float var1);

    public void setDimensions(float var1);

    public void setDimensions(float var1, float var2);

    public void setImage(BitmapDescriptor var1);

    public void setPosition(LatLng var1);

    public void setPositionFromBounds(LatLngBounds var1);

    public void setTransparency(float var1);

    public void setVisible(boolean var1);

    public void setZIndex(float var1);
}

