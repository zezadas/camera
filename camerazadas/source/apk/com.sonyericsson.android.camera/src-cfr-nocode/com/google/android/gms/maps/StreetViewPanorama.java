/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.graphics.Point;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.p;
import com.google.android.gms.maps.internal.q;
import com.google.android.gms.maps.internal.r;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

/*
 * Exception performing whole class analysis.
 */
public class StreetViewPanorama {
    private final IStreetViewPanoramaDelegate ajb;

    protected StreetViewPanorama(IStreetViewPanoramaDelegate var1);

    public void animateTo(StreetViewPanoramaCamera var1, long var2);

    public StreetViewPanoramaLocation getLocation();

    public StreetViewPanoramaCamera getPanoramaCamera();

    public boolean isPanningGesturesEnabled();

    public boolean isStreetNamesEnabled();

    public boolean isUserNavigationEnabled();

    public boolean isZoomGesturesEnabled();

    IStreetViewPanoramaDelegate mC();

    public Point orientationToPoint(StreetViewPanoramaOrientation var1);

    public StreetViewPanoramaOrientation pointToOrientation(Point var1);

    public final void setOnStreetViewPanoramaCameraChangeListener(OnStreetViewPanoramaCameraChangeListener var1);

    public final void setOnStreetViewPanoramaChangeListener(OnStreetViewPanoramaChangeListener var1);

    public final void setOnStreetViewPanoramaClickListener(OnStreetViewPanoramaClickListener var1);

    public void setPanningGesturesEnabled(boolean var1);

    public void setPosition(LatLng var1);

    public void setPosition(LatLng var1, int var2);

    public void setPosition(String var1);

    public void setStreetNamesEnabled(boolean var1);

    public void setUserNavigationEnabled(boolean var1);

    public void setZoomGesturesEnabled(boolean var1);

    public static interface OnStreetViewPanoramaCameraChangeListener {
        public void onStreetViewPanoramaCameraChange(StreetViewPanoramaCamera var1);
    }

    public static interface OnStreetViewPanoramaChangeListener {
        public void onStreetViewPanoramaChange(StreetViewPanoramaLocation var1);
    }

    public static interface OnStreetViewPanoramaClickListener {
        public void onStreetViewPanoramaClick(StreetViewPanoramaOrientation var1);
    }

}

