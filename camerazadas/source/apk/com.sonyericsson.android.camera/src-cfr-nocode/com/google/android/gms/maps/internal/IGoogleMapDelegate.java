/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.internal.ILocationSourceDelegate;
import com.google.android.gms.maps.internal.IProjectionDelegate;
import com.google.android.gms.maps.internal.IUiSettingsDelegate;
import com.google.android.gms.maps.internal.b;
import com.google.android.gms.maps.internal.d;
import com.google.android.gms.maps.internal.e;
import com.google.android.gms.maps.internal.f;
import com.google.android.gms.maps.internal.g;
import com.google.android.gms.maps.internal.i;
import com.google.android.gms.maps.internal.j;
import com.google.android.gms.maps.internal.k;
import com.google.android.gms.maps.internal.l;
import com.google.android.gms.maps.internal.m;
import com.google.android.gms.maps.internal.n;
import com.google.android.gms.maps.internal.o;
import com.google.android.gms.maps.internal.s;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import com.google.android.gms.maps.model.internal.c;
import com.google.android.gms.maps.model.internal.h;

public interface IGoogleMapDelegate
extends IInterface {
    public com.google.android.gms.maps.model.internal.b addCircle(CircleOptions var1) throws RemoteException;

    public c addGroundOverlay(GroundOverlayOptions var1) throws RemoteException;

    public com.google.android.gms.maps.model.internal.f addMarker(MarkerOptions var1) throws RemoteException;

    public com.google.android.gms.maps.model.internal.g addPolygon(PolygonOptions var1) throws RemoteException;

    public IPolylineDelegate addPolyline(PolylineOptions var1) throws RemoteException;

    public h addTileOverlay(TileOverlayOptions var1) throws RemoteException;

    public void animateCamera(com.google.android.gms.dynamic.d var1) throws RemoteException;

    public void animateCameraWithCallback(com.google.android.gms.dynamic.d var1, b var2) throws RemoteException;

    public void animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.d var1, int var2, b var3) throws RemoteException;

    public void clear() throws RemoteException;

    public CameraPosition getCameraPosition() throws RemoteException;

    public com.google.android.gms.maps.model.internal.d getFocusedBuilding() throws RemoteException;

    public int getMapType() throws RemoteException;

    public float getMaxZoomLevel() throws RemoteException;

    public float getMinZoomLevel() throws RemoteException;

    public Location getMyLocation() throws RemoteException;

    public IProjectionDelegate getProjection() throws RemoteException;

    public IUiSettingsDelegate getUiSettings() throws RemoteException;

    public boolean isBuildingsEnabled() throws RemoteException;

    public boolean isIndoorEnabled() throws RemoteException;

    public boolean isMyLocationEnabled() throws RemoteException;

    public boolean isTrafficEnabled() throws RemoteException;

    public void moveCamera(com.google.android.gms.dynamic.d var1) throws RemoteException;

    public void setBuildingsEnabled(boolean var1) throws RemoteException;

    public boolean setIndoorEnabled(boolean var1) throws RemoteException;

    public void setInfoWindowAdapter(d var1) throws RemoteException;

    public void setLocationSource(ILocationSourceDelegate var1) throws RemoteException;

    public void setMapType(int var1) throws RemoteException;

    public void setMyLocationEnabled(boolean var1) throws RemoteException;

    public void setOnCameraChangeListener(e var1) throws RemoteException;

    public void setOnIndoorStateChangeListener(f var1) throws RemoteException;

    public void setOnInfoWindowClickListener(g var1) throws RemoteException;

    public void setOnMapClickListener(i var1) throws RemoteException;

    public void setOnMapLoadedCallback(j var1) throws RemoteException;

    public void setOnMapLongClickListener(k var1) throws RemoteException;

    public void setOnMarkerClickListener(l var1) throws RemoteException;

    public void setOnMarkerDragListener(m var1) throws RemoteException;

    public void setOnMyLocationButtonClickListener(n var1) throws RemoteException;

    public void setOnMyLocationChangeListener(o var1) throws RemoteException;

    public void setPadding(int var1, int var2, int var3, int var4) throws RemoteException;

    public void setTrafficEnabled(boolean var1) throws RemoteException;

    public void snapshot(s var1, com.google.android.gms.dynamic.d var2) throws RemoteException;

    public void stopAnimation() throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.IGoogleMapDelegate$a
    extends Binder
    implements IGoogleMapDelegate {
        public static IGoogleMapDelegate aQ(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements IGoogleMapDelegate {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public com.google.android.gms.maps.model.internal.b addCircle(CircleOptions var1) throws RemoteException;

            @Override
            public c addGroundOverlay(GroundOverlayOptions var1) throws RemoteException;

            @Override
            public com.google.android.gms.maps.model.internal.f addMarker(MarkerOptions var1) throws RemoteException;

            @Override
            public com.google.android.gms.maps.model.internal.g addPolygon(PolygonOptions var1) throws RemoteException;

            @Override
            public IPolylineDelegate addPolyline(PolylineOptions var1) throws RemoteException;

            @Override
            public h addTileOverlay(TileOverlayOptions var1) throws RemoteException;

            @Override
            public void animateCamera(com.google.android.gms.dynamic.d var1) throws RemoteException;

            @Override
            public void animateCameraWithCallback(com.google.android.gms.dynamic.d var1, b var2) throws RemoteException;

            @Override
            public void animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.d var1, int var2, b var3) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void clear() throws RemoteException;

            @Override
            public CameraPosition getCameraPosition() throws RemoteException;

            @Override
            public com.google.android.gms.maps.model.internal.d getFocusedBuilding() throws RemoteException;

            @Override
            public int getMapType() throws RemoteException;

            @Override
            public float getMaxZoomLevel() throws RemoteException;

            @Override
            public float getMinZoomLevel() throws RemoteException;

            @Override
            public Location getMyLocation() throws RemoteException;

            @Override
            public IProjectionDelegate getProjection() throws RemoteException;

            @Override
            public IUiSettingsDelegate getUiSettings() throws RemoteException;

            @Override
            public boolean isBuildingsEnabled() throws RemoteException;

            @Override
            public boolean isIndoorEnabled() throws RemoteException;

            @Override
            public boolean isMyLocationEnabled() throws RemoteException;

            @Override
            public boolean isTrafficEnabled() throws RemoteException;

            @Override
            public void moveCamera(com.google.android.gms.dynamic.d var1) throws RemoteException;

            @Override
            public void setBuildingsEnabled(boolean var1) throws RemoteException;

            @Override
            public boolean setIndoorEnabled(boolean var1) throws RemoteException;

            @Override
            public void setInfoWindowAdapter(d var1) throws RemoteException;

            @Override
            public void setLocationSource(ILocationSourceDelegate var1) throws RemoteException;

            @Override
            public void setMapType(int var1) throws RemoteException;

            @Override
            public void setMyLocationEnabled(boolean var1) throws RemoteException;

            @Override
            public void setOnCameraChangeListener(e var1) throws RemoteException;

            @Override
            public void setOnIndoorStateChangeListener(f var1) throws RemoteException;

            @Override
            public void setOnInfoWindowClickListener(g var1) throws RemoteException;

            @Override
            public void setOnMapClickListener(i var1) throws RemoteException;

            @Override
            public void setOnMapLoadedCallback(j var1) throws RemoteException;

            @Override
            public void setOnMapLongClickListener(k var1) throws RemoteException;

            @Override
            public void setOnMarkerClickListener(l var1) throws RemoteException;

            @Override
            public void setOnMarkerDragListener(m var1) throws RemoteException;

            @Override
            public void setOnMyLocationButtonClickListener(n var1) throws RemoteException;

            @Override
            public void setOnMyLocationChangeListener(o var1) throws RemoteException;

            @Override
            public void setPadding(int var1, int var2, int var3, int var4) throws RemoteException;

            @Override
            public void setTrafficEnabled(boolean var1) throws RemoteException;

            @Override
            public void snapshot(s var1, com.google.android.gms.dynamic.d var2) throws RemoteException;

            @Override
            public void stopAnimation() throws RemoteException;
        }

    }

}

