/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.internal.f;

/*
 * Exception performing whole class analysis.
 */
public final class Marker {
    private final f akc;

    public Marker(f var1);

    public boolean equals(Object var1);

    public float getAlpha();

    public String getId();

    public LatLng getPosition();

    public float getRotation();

    public String getSnippet();

    public String getTitle();

    public int hashCode();

    public void hideInfoWindow();

    public boolean isDraggable();

    public boolean isFlat();

    public boolean isInfoWindowShown();

    public boolean isVisible();

    public void remove();

    public void setAlpha(float var1);

    public void setAnchor(float var1, float var2);

    public void setDraggable(boolean var1);

    public void setFlat(boolean var1);

    public void setIcon(BitmapDescriptor var1);

    public void setInfoWindowAnchor(float var1, float var2);

    public void setPosition(LatLng var1);

    public void setRotation(float var1);

    public void setSnippet(String var1);

    public void setTitle(String var1);

    public void setVisible(boolean var1);

    public void showInfoWindow();
}

