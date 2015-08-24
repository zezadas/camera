/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.p;
import com.google.android.gms.maps.internal.q;
import com.google.android.gms.maps.internal.r;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public class StreetViewPanorama {
    private final IStreetViewPanoramaDelegate ajb;

    protected StreetViewPanorama(IStreetViewPanoramaDelegate iStreetViewPanoramaDelegate) {
        this.ajb = o.i(iStreetViewPanoramaDelegate);
    }

    public void animateTo(StreetViewPanoramaCamera streetViewPanoramaCamera, long l) {
        try {
            this.ajb.animateTo(streetViewPanoramaCamera, l);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public StreetViewPanoramaLocation getLocation() {
        try {
            StreetViewPanoramaLocation streetViewPanoramaLocation = this.ajb.getStreetViewPanoramaLocation();
            return streetViewPanoramaLocation;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public StreetViewPanoramaCamera getPanoramaCamera() {
        try {
            StreetViewPanoramaCamera streetViewPanoramaCamera = this.ajb.getPanoramaCamera();
            return streetViewPanoramaCamera;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public boolean isPanningGesturesEnabled() {
        try {
            boolean bl = this.ajb.isPanningGesturesEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isStreetNamesEnabled() {
        try {
            boolean bl = this.ajb.isStreetNamesEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isUserNavigationEnabled() {
        try {
            boolean bl = this.ajb.isUserNavigationEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isZoomGesturesEnabled() {
        try {
            boolean bl = this.ajb.isZoomGesturesEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    IStreetViewPanoramaDelegate mC() {
        return this.ajb;
    }

    public Point orientationToPoint(StreetViewPanoramaOrientation object) {
        block3 : {
            try {
                object = this.ajb.orientationToPoint((StreetViewPanoramaOrientation)object);
                if (object != null) break block3;
                return null;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
        }
        object = (Point)e.f((d)object);
        return object;
    }

    public StreetViewPanoramaOrientation pointToOrientation(Point parcelable) {
        try {
            parcelable = this.ajb.pointToOrientation(e.k(parcelable));
            return parcelable;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public final void setOnStreetViewPanoramaCameraChangeListener(final OnStreetViewPanoramaCameraChangeListener var1_1) {
        if (var1_1 != null) ** GOTO lbl5
        try {
            this.ajb.setOnStreetViewPanoramaCameraChangeListener(null);
            return;
lbl5: // 1 sources:
            this.ajb.setOnStreetViewPanoramaCameraChangeListener(new p.a(){

                @Override
                public void onStreetViewPanoramaCameraChange(StreetViewPanoramaCamera streetViewPanoramaCamera) {
                    var1_1.onStreetViewPanoramaCameraChange(streetViewPanoramaCamera);
                }
            });
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public final void setOnStreetViewPanoramaChangeListener(final OnStreetViewPanoramaChangeListener var1_1) {
        if (var1_1 != null) ** GOTO lbl5
        try {
            this.ajb.setOnStreetViewPanoramaChangeListener(null);
            return;
lbl5: // 1 sources:
            this.ajb.setOnStreetViewPanoramaChangeListener(new q.a(){

                @Override
                public void onStreetViewPanoramaChange(StreetViewPanoramaLocation streetViewPanoramaLocation) {
                    var1_1.onStreetViewPanoramaChange(streetViewPanoramaLocation);
                }
            });
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public final void setOnStreetViewPanoramaClickListener(final OnStreetViewPanoramaClickListener var1_1) {
        if (var1_1 != null) ** GOTO lbl5
        try {
            this.ajb.setOnStreetViewPanoramaClickListener(null);
            return;
lbl5: // 1 sources:
            this.ajb.setOnStreetViewPanoramaClickListener(new r.a(){

                @Override
                public void onStreetViewPanoramaClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
                    var1_1.onStreetViewPanoramaClick(streetViewPanoramaOrientation);
                }
            });
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setPanningGesturesEnabled(boolean bl) {
        try {
            this.ajb.enablePanning(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setPosition(LatLng latLng) {
        try {
            this.ajb.setPosition(latLng);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setPosition(LatLng latLng, int n) {
        try {
            this.ajb.setPositionWithRadius(latLng, n);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setPosition(String string) {
        try {
            this.ajb.setPositionWithID(string);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setStreetNamesEnabled(boolean bl) {
        try {
            this.ajb.enableStreetNames(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setUserNavigationEnabled(boolean bl) {
        try {
            this.ajb.enableUserNavigation(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setZoomGesturesEnabled(boolean bl) {
        try {
            this.ajb.enableZoom(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

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

