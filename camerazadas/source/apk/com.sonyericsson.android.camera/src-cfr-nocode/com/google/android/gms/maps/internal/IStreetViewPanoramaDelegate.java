/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.internal.p;
import com.google.android.gms.maps.internal.q;
import com.google.android.gms.maps.internal.r;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public interface IStreetViewPanoramaDelegate
extends IInterface {
    public void animateTo(StreetViewPanoramaCamera var1, long var2) throws RemoteException;

    public void enablePanning(boolean var1) throws RemoteException;

    public void enableStreetNames(boolean var1) throws RemoteException;

    public void enableUserNavigation(boolean var1) throws RemoteException;

    public void enableZoom(boolean var1) throws RemoteException;

    public StreetViewPanoramaCamera getPanoramaCamera() throws RemoteException;

    public StreetViewPanoramaLocation getStreetViewPanoramaLocation() throws RemoteException;

    public boolean isPanningGesturesEnabled() throws RemoteException;

    public boolean isStreetNamesEnabled() throws RemoteException;

    public boolean isUserNavigationEnabled() throws RemoteException;

    public boolean isZoomGesturesEnabled() throws RemoteException;

    public d orientationToPoint(StreetViewPanoramaOrientation var1) throws RemoteException;

    public StreetViewPanoramaOrientation pointToOrientation(d var1) throws RemoteException;

    public void setOnStreetViewPanoramaCameraChangeListener(p var1) throws RemoteException;

    public void setOnStreetViewPanoramaChangeListener(q var1) throws RemoteException;

    public void setOnStreetViewPanoramaClickListener(r var1) throws RemoteException;

    public void setPosition(LatLng var1) throws RemoteException;

    public void setPositionWithID(String var1) throws RemoteException;

    public void setPositionWithRadius(LatLng var1, int var2) throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate$a
    extends Binder
    implements IStreetViewPanoramaDelegate {
        public static IStreetViewPanoramaDelegate bl(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements IStreetViewPanoramaDelegate {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void animateTo(StreetViewPanoramaCamera var1, long var2) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void enablePanning(boolean var1) throws RemoteException;

            @Override
            public void enableStreetNames(boolean var1) throws RemoteException;

            @Override
            public void enableUserNavigation(boolean var1) throws RemoteException;

            @Override
            public void enableZoom(boolean var1) throws RemoteException;

            @Override
            public StreetViewPanoramaCamera getPanoramaCamera() throws RemoteException;

            @Override
            public StreetViewPanoramaLocation getStreetViewPanoramaLocation() throws RemoteException;

            @Override
            public boolean isPanningGesturesEnabled() throws RemoteException;

            @Override
            public boolean isStreetNamesEnabled() throws RemoteException;

            @Override
            public boolean isUserNavigationEnabled() throws RemoteException;

            @Override
            public boolean isZoomGesturesEnabled() throws RemoteException;

            @Override
            public d orientationToPoint(StreetViewPanoramaOrientation var1) throws RemoteException;

            @Override
            public StreetViewPanoramaOrientation pointToOrientation(d var1) throws RemoteException;

            @Override
            public void setOnStreetViewPanoramaCameraChangeListener(p var1) throws RemoteException;

            @Override
            public void setOnStreetViewPanoramaChangeListener(q var1) throws RemoteException;

            @Override
            public void setOnStreetViewPanoramaClickListener(r var1) throws RemoteException;

            @Override
            public void setPosition(LatLng var1) throws RemoteException;

            @Override
            public void setPositionWithID(String var1) throws RemoteException;

            @Override
            public void setPositionWithRadius(LatLng var1, int var2) throws RemoteException;
        }

    }

}

