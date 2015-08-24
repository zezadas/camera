/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.location.Location;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.LocationSource;
import com.google.android.gms.maps.Projection;
import com.google.android.gms.maps.UiSettings;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.ILocationSourceDelegate;
import com.google.android.gms.maps.internal.b;
import com.google.android.gms.maps.internal.d;
import com.google.android.gms.maps.internal.e;
import com.google.android.gms.maps.internal.f;
import com.google.android.gms.maps.internal.g;
import com.google.android.gms.maps.internal.h;
import com.google.android.gms.maps.internal.i;
import com.google.android.gms.maps.internal.j;
import com.google.android.gms.maps.internal.k;
import com.google.android.gms.maps.internal.l;
import com.google.android.gms.maps.internal.m;
import com.google.android.gms.maps.internal.n;
import com.google.android.gms.maps.internal.o;
import com.google.android.gms.maps.internal.s;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlay;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.IndoorBuilding;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlay;
import com.google.android.gms.maps.model.TileOverlayOptions;

/*
 * Exception performing whole class analysis.
 */
public final class GoogleMap {
    public static final int MAP_TYPE_HYBRID = 4;
    public static final int MAP_TYPE_NONE = 0;
    public static final int MAP_TYPE_NORMAL = 1;
    public static final int MAP_TYPE_SATELLITE = 2;
    public static final int MAP_TYPE_TERRAIN = 3;
    private final IGoogleMapDelegate ain;
    private UiSettings aio;

    protected GoogleMap(IGoogleMapDelegate var1);

    public final Circle addCircle(CircleOptions var1);

    public final GroundOverlay addGroundOverlay(GroundOverlayOptions var1);

    public final Marker addMarker(MarkerOptions var1);

    public final Polygon addPolygon(PolygonOptions var1);

    public final Polyline addPolyline(PolylineOptions var1);

    public final TileOverlay addTileOverlay(TileOverlayOptions var1);

    public final void animateCamera(CameraUpdate var1);

    public final void animateCamera(CameraUpdate var1, int var2, CancelableCallback var3);

    public final void animateCamera(CameraUpdate var1, CancelableCallback var2);

    public final void clear();

    public final CameraPosition getCameraPosition();

    public IndoorBuilding getFocusedBuilding();

    public final int getMapType();

    public final float getMaxZoomLevel();

    public final float getMinZoomLevel();

    @Deprecated
    public final Location getMyLocation();

    public final Projection getProjection();

    public final UiSettings getUiSettings();

    public final boolean isBuildingsEnabled();

    public final boolean isIndoorEnabled();

    public final boolean isMyLocationEnabled();

    public final boolean isTrafficEnabled();

    public final void moveCamera(CameraUpdate var1);

    IGoogleMapDelegate mq();

    public final void setBuildingsEnabled(boolean var1);

    public final boolean setIndoorEnabled(boolean var1);

    public final void setInfoWindowAdapter(InfoWindowAdapter var1);

    public final void setLocationSource(LocationSource var1);

    public final void setMapType(int var1);

    public final void setMyLocationEnabled(boolean var1);

    public final void setOnCameraChangeListener(OnCameraChangeListener var1);

    public final void setOnIndoorStateChangeListener(OnIndoorStateChangeListener var1);

    public final void setOnInfoWindowClickListener(OnInfoWindowClickListener var1);

    public final void setOnMapClickListener(OnMapClickListener var1);

    public void setOnMapLoadedCallback(OnMapLoadedCallback var1);

    public final void setOnMapLongClickListener(OnMapLongClickListener var1);

    public final void setOnMarkerClickListener(OnMarkerClickListener var1);

    public final void setOnMarkerDragListener(OnMarkerDragListener var1);

    public final void setOnMyLocationButtonClickListener(OnMyLocationButtonClickListener var1);

    @Deprecated
    public final void setOnMyLocationChangeListener(OnMyLocationChangeListener var1);

    public final void setPadding(int var1, int var2, int var3, int var4);

    public final void setTrafficEnabled(boolean var1);

    public final void snapshot(SnapshotReadyCallback var1);

    public final void snapshot(SnapshotReadyCallback var1, Bitmap var2);

    public final void stopAnimation();

    public static interface CancelableCallback {
        public void onCancel();

        public void onFinish();
    }

    public static interface InfoWindowAdapter {
        public View getInfoContents(Marker var1);

        public View getInfoWindow(Marker var1);
    }

    public static interface OnCameraChangeListener {
        public void onCameraChange(CameraPosition var1);
    }

    public static interface OnIndoorStateChangeListener {
        public void onIndoorBuildingFocused();

        public void onIndoorLevelActivated(IndoorBuilding var1);
    }

    public static interface OnInfoWindowClickListener {
        public void onInfoWindowClick(Marker var1);
    }

    public static interface OnMapClickListener {
        public void onMapClick(LatLng var1);
    }

    public static interface OnMapLoadedCallback {
        public void onMapLoaded();
    }

    public static interface OnMapLongClickListener {
        public void onMapLongClick(LatLng var1);
    }

    public static interface OnMarkerClickListener {
        public boolean onMarkerClick(Marker var1);
    }

    public static interface OnMarkerDragListener {
        public void onMarkerDrag(Marker var1);

        public void onMarkerDragEnd(Marker var1);

        public void onMarkerDragStart(Marker var1);
    }

    public static interface OnMyLocationButtonClickListener {
        public boolean onMyLocationButtonClick();
    }

    @Deprecated
    public static interface OnMyLocationChangeListener {
        public void onMyLocationChange(Location var1);
    }

    public static interface SnapshotReadyCallback {
        public void onSnapshotReady(Bitmap var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class a
    extends b.a {
        private final CancelableCallback aiF;

        a(CancelableCallback var1);

        @Override
        public void onCancel();

        @Override
        public void onFinish();
    }

}

