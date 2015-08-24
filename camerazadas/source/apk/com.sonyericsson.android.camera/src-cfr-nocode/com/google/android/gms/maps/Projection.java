/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.graphics.Point;
import com.google.android.gms.maps.internal.IProjectionDelegate;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;

/*
 * Exception performing whole class analysis.
 */
public final class Projection {
    private final IProjectionDelegate aja;

    Projection(IProjectionDelegate var1);

    public LatLng fromScreenLocation(Point var1);

    public VisibleRegion getVisibleRegion();

    public Point toScreenLocation(LatLng var1);
}

