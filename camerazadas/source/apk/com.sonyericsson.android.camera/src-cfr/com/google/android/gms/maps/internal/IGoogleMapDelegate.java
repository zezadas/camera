/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
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
import com.google.android.gms.maps.model.c;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import com.google.android.gms.maps.model.internal.b;
import com.google.android.gms.maps.model.internal.c;
import com.google.android.gms.maps.model.internal.d;
import com.google.android.gms.maps.model.internal.f;
import com.google.android.gms.maps.model.internal.g;
import com.google.android.gms.maps.model.internal.h;
import com.google.android.gms.maps.model.w;

public interface IGoogleMapDelegate
extends IInterface {
    public com.google.android.gms.maps.model.internal.b addCircle(CircleOptions var1) throws RemoteException;

    public com.google.android.gms.maps.model.internal.c addGroundOverlay(GroundOverlayOptions var1) throws RemoteException;

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
        public static IGoogleMapDelegate aQ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (iInterface != null && iInterface instanceof IGoogleMapDelegate) {
                return (IGoogleMapDelegate)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            boolean bl = false;
            int n3 = 0;
            int n4 = 0;
            int n5 = 0;
            boolean bl2 = false;
            int n6 = 0;
            boolean bl3 = false;
            int n7 = 0;
            IPolylineDelegate iPolylineDelegate = null;
            Object var16_14 = null;
            Object var17_15 = null;
            Object var18_16 = null;
            Object var20_17 = null;
            Object var21_18 = null;
            Object var19_19 = null;
            Object var22_20 = null;
            IInterface iInterface = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = this.getCameraPosition();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    float f = this.getMaxZoomLevel();
                    parcel.writeNoException();
                    parcel.writeFloat(f);
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    float f = this.getMinZoomLevel();
                    parcel.writeNoException();
                    parcel.writeFloat(f);
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.moveCamera(d.a.am(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 5: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.animateCamera(d.a.am(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 6: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.animateCameraWithCallback(d.a.am(object.readStrongBinder()), b.a.aO(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 7: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.animateCameraWithDurationAndCallback(d.a.am(object.readStrongBinder()), object.readInt(), b.a.aO(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 8: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.stopAnimation();
                    parcel.writeNoException();
                    return true;
                }
                case 9: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object.readInt() != 0 ? PolylineOptions.CREATOR.cP((Parcel)object) : null;
                    iPolylineDelegate = this.addPolyline((PolylineOptions)object);
                    parcel.writeNoException();
                    object = iInterface;
                    if (iPolylineDelegate != null) {
                        object = iPolylineDelegate.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 10: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object.readInt() != 0 ? PolygonOptions.CREATOR.cO((Parcel)object) : null;
                    iInterface = this.addPolygon((PolygonOptions)object);
                    parcel.writeNoException();
                    object = iPolylineDelegate;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 11: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object.readInt() != 0 ? MarkerOptions.CREATOR.cN((Parcel)object) : null;
                    iInterface = this.addMarker((MarkerOptions)object);
                    parcel.writeNoException();
                    object = var16_14;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 12: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object.readInt() != 0 ? GroundOverlayOptions.CREATOR.cK((Parcel)object) : null;
                    iInterface = this.addGroundOverlay((GroundOverlayOptions)object);
                    parcel.writeNoException();
                    object = var17_15;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 13: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object.readInt() != 0 ? TileOverlayOptions.CREATOR.cV((Parcel)object) : null;
                    iInterface = this.addTileOverlay((TileOverlayOptions)object);
                    parcel.writeNoException();
                    object = var18_16;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 14: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.clear();
                    parcel.writeNoException();
                    return true;
                }
                case 15: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    n = this.getMapType();
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 16: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setMapType(object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 17: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    bl = this.isTrafficEnabled();
                    parcel.writeNoException();
                    n = n7;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 18: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.setTrafficEnabled(bl);
                    parcel.writeNoException();
                    return true;
                }
                case 19: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    bl = this.isIndoorEnabled();
                    parcel.writeNoException();
                    n = n3;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 20: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    bl = object.readInt() != 0;
                    bl = this.setIndoorEnabled(bl);
                    parcel.writeNoException();
                    n = n4;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 21: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    bl = this.isMyLocationEnabled();
                    parcel.writeNoException();
                    n = n5;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 22: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    bl = bl2;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.setMyLocationEnabled(bl);
                    parcel.writeNoException();
                    return true;
                }
                case 23: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = this.getMyLocation();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 24: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setLocationSource(ILocationSourceDelegate.a.aS(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 25: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    iInterface = this.getUiSettings();
                    parcel.writeNoException();
                    object = var20_17;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 26: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    iInterface = this.getProjection();
                    parcel.writeNoException();
                    object = var21_18;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 27: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setOnCameraChangeListener(e.a.aV(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 28: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setOnMapClickListener(i.a.aZ(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 29: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setOnMapLongClickListener(k.a.bb(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 30: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setOnMarkerClickListener(l.a.bc(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 31: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setOnMarkerDragListener(m.a.bd(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 32: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setOnInfoWindowClickListener(g.a.aX(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 33: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setInfoWindowAdapter(d.a.aR(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 35: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object.readInt() != 0 ? CircleOptions.CREATOR.cJ((Parcel)object) : null;
                    iInterface = this.addCircle((CircleOptions)object);
                    parcel.writeNoException();
                    object = var19_19;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 36: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setOnMyLocationChangeListener(o.a.bf(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 37: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setOnMyLocationButtonClickListener(n.a.be(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 38: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.snapshot(s.a.bk(object.readStrongBinder()), d.a.am(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 39: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setPadding(object.readInt(), object.readInt(), object.readInt(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 40: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    bl = this.isBuildingsEnabled();
                    parcel.writeNoException();
                    n = n6;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 41: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    bl = bl3;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.setBuildingsEnabled(bl);
                    parcel.writeNoException();
                    return true;
                }
                case 42: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.setOnMapLoadedCallback(j.a.ba(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 44: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    iInterface = this.getFocusedBuilding();
                    parcel.writeNoException();
                    object = var22_20;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 45: 
            }
            object.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            this.setOnIndoorStateChangeListener(f.a.aW(object.readStrongBinder()));
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements IGoogleMapDelegate {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public com.google.android.gms.maps.model.internal.b addCircle(CircleOptions object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(35, parcel, parcel2, 0);
                    parcel2.readException();
                    object = b.a.bq(parcel2.readStrongBinder());
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public com.google.android.gms.maps.model.internal.c addGroundOverlay(GroundOverlayOptions object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12, parcel, parcel2, 0);
                    parcel2.readException();
                    object = c.a.br(parcel2.readStrongBinder());
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public com.google.android.gms.maps.model.internal.f addMarker(MarkerOptions object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(11, parcel, parcel2, 0);
                    parcel2.readException();
                    object = f.a.bu(parcel2.readStrongBinder());
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public com.google.android.gms.maps.model.internal.g addPolygon(PolygonOptions object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(10, parcel, parcel2, 0);
                    parcel2.readException();
                    object = g.a.bv(parcel2.readStrongBinder());
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public IPolylineDelegate addPolyline(PolylineOptions object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(9, parcel, parcel2, 0);
                    parcel2.readException();
                    object = IPolylineDelegate.a.bw(parcel2.readStrongBinder());
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public h addTileOverlay(TileOverlayOptions object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(13, parcel, parcel2, 0);
                    parcel2.readException();
                    object = h.a.bx(parcel2.readStrongBinder());
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void animateCamera(com.google.android.gms.dynamic.d object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void animateCameraWithCallback(com.google.android.gms.dynamic.d object, b b) throws RemoteException {
                Object var3_4 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    object = var3_4;
                    if (b != null) {
                        object = b.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(6, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.d object, int n, b b) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    object = var4_5;
                    if (b != null) {
                        object = b.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(7, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            @Override
            public void clear() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(14, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public CameraPosition getCameraPosition() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    CameraPosition cameraPosition = parcel2.readInt() != 0 ? CameraPosition.CREATOR.cI(parcel2) : null;
                    return cameraPosition;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public com.google.android.gms.maps.model.internal.d getFocusedBuilding() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(44, parcel, parcel2, 0);
                    parcel2.readException();
                    com.google.android.gms.maps.model.internal.d d = d.a.bs(parcel2.readStrongBinder());
                    return d;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int getMapType() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(15, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public float getMaxZoomLevel() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    float f = parcel2.readFloat();
                    return f;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public float getMinZoomLevel() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    float f = parcel2.readFloat();
                    return f;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public Location getMyLocation() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(23, parcel, parcel2, 0);
                    parcel2.readException();
                    Location location = parcel2.readInt() != 0 ? Location.CREATOR.createFromParcel(parcel2) : null;
                    return location;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public IProjectionDelegate getProjection() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(26, parcel, parcel2, 0);
                    parcel2.readException();
                    IProjectionDelegate iProjectionDelegate = IProjectionDelegate.a.bj(parcel2.readStrongBinder());
                    return iProjectionDelegate;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public IUiSettingsDelegate getUiSettings() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(25, parcel, parcel2, 0);
                    parcel2.readException();
                    IUiSettingsDelegate iUiSettingsDelegate = IUiSettingsDelegate.a.bo(parcel2.readStrongBinder());
                    return iUiSettingsDelegate;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public boolean isBuildingsEnabled() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(40, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    if (n != 0) {
                        bl = true;
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return bl;
                }
                catch (Throwable var5_5) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var5_5;
                }
            }

            @Override
            public boolean isIndoorEnabled() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(19, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    if (n != 0) {
                        bl = true;
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return bl;
                }
                catch (Throwable var5_5) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var5_5;
                }
            }

            @Override
            public boolean isMyLocationEnabled() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(21, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    if (n != 0) {
                        bl = true;
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return bl;
                }
                catch (Throwable var5_5) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var5_5;
                }
            }

            @Override
            public boolean isTrafficEnabled() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(17, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    if (n != 0) {
                        bl = true;
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return bl;
                }
                catch (Throwable var5_5) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var5_5;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void moveCamera(com.google.android.gms.dynamic.d object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(4, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            @Override
            public void setBuildingsEnabled(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(41, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public boolean setIndoorEnabled(boolean bl) throws RemoteException {
                boolean bl2 = true;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    int n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(20, parcel, parcel2, 0);
                    parcel2.readException();
                    n = parcel2.readInt();
                    bl = n != 0 ? bl2 : false;
                    return bl;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setInfoWindowAdapter(d object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(33, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setLocationSource(ILocationSourceDelegate object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(24, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            @Override
            public void setMapType(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    parcel.writeInt(n);
                    this.lb.transact(16, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void setMyLocationEnabled(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(22, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setOnCameraChangeListener(e object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(27, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setOnIndoorStateChangeListener(f object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(45, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setOnInfoWindowClickListener(g object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(32, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setOnMapClickListener(i object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(28, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setOnMapLoadedCallback(j object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(42, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setOnMapLongClickListener(k object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(29, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setOnMarkerClickListener(l object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(30, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setOnMarkerDragListener(m object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(31, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setOnMyLocationButtonClickListener(n object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(37, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setOnMyLocationChangeListener(o object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(36, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            @Override
            public void setPadding(int n, int n2, int n3, int n4) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeInt(n3);
                    parcel.writeInt(n4);
                    this.lb.transact(39, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void setTrafficEnabled(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(18, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void snapshot(s object, com.google.android.gms.dynamic.d d) throws RemoteException {
                Object var3_4 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    object = var3_4;
                    if (d != null) {
                        object = d.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(38, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            @Override
            public void stopAnimation() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    this.lb.transact(8, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }
        }

    }

}

