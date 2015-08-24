/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.internal.IProjectionDelegate;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.VisibleRegion;

public final class Projection {
    private final IProjectionDelegate aja;

    Projection(IProjectionDelegate iProjectionDelegate) {
        this.aja = iProjectionDelegate;
    }

    public LatLng fromScreenLocation(Point parcelable) {
        try {
            parcelable = this.aja.fromScreenLocation(e.k(parcelable));
            return parcelable;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public VisibleRegion getVisibleRegion() {
        try {
            VisibleRegion visibleRegion = this.aja.getVisibleRegion();
            return visibleRegion;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public Point toScreenLocation(LatLng parcelable) {
        try {
            parcelable = (Point)e.f(this.aja.toScreenLocation((LatLng)parcelable));
            return parcelable;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }
}

