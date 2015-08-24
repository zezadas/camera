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
import com.google.android.gms.maps.model.i;
import com.google.android.gms.maps.model.s;
import com.google.android.gms.maps.model.t;

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
        public static IStreetViewPanoramaDelegate bl(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            if (iInterface != null && iInterface instanceof IStreetViewPanoramaDelegate) {
                return (IStreetViewPanoramaDelegate)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            Object var15_5 = null;
            Object var13_6 = null;
            d d = null;
            boolean bl = false;
            boolean bl2 = false;
            boolean bl3 = false;
            int n3 = 0;
            int n4 = 0;
            int n5 = 0;
            int n6 = 0;
            boolean bl4 = false;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    if (object.readInt() != 0) {
                        bl4 = true;
                    }
                    this.enableZoom(bl4);
                    parcel.writeNoException();
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    bl4 = bl;
                    if (object.readInt() != 0) {
                        bl4 = true;
                    }
                    this.enablePanning(bl4);
                    parcel.writeNoException();
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    bl4 = bl2;
                    if (object.readInt() != 0) {
                        bl4 = true;
                    }
                    this.enableUserNavigation(bl4);
                    parcel.writeNoException();
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    bl4 = bl3;
                    if (object.readInt() != 0) {
                        bl4 = true;
                    }
                    this.enableStreetNames(bl4);
                    parcel.writeNoException();
                    return true;
                }
                case 5: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    bl4 = this.isZoomGesturesEnabled();
                    parcel.writeNoException();
                    n = n3;
                    if (bl4) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 6: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    bl4 = this.isPanningGesturesEnabled();
                    parcel.writeNoException();
                    n = n4;
                    if (bl4) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 7: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    bl4 = this.isUserNavigationEnabled();
                    parcel.writeNoException();
                    n = n5;
                    if (bl4) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 8: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    bl4 = this.isStreetNamesEnabled();
                    parcel.writeNoException();
                    n = n6;
                    if (bl4) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 9: {
                    void var13_8;
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    if (object.readInt() != 0) {
                        StreetViewPanoramaCamera streetViewPanoramaCamera = StreetViewPanoramaCamera.CREATOR.cQ((Parcel)object);
                    } else {
                        Object var13_9 = null;
                    }
                    this.animateTo((StreetViewPanoramaCamera)var13_8, object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 10: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    object = this.getPanoramaCamera();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 11: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    this.setPositionWithID(object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 12: {
                    void var13_12;
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    d d2 = d;
                    if (object.readInt() != 0) {
                        LatLng latLng = LatLng.CREATOR.cM((Parcel)object);
                    }
                    this.setPosition((LatLng)var13_12);
                    parcel.writeNoException();
                    return true;
                }
                case 13: {
                    void var13_15;
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    Object var13_13 = var15_5;
                    if (object.readInt() != 0) {
                        LatLng latLng = LatLng.CREATOR.cM((Parcel)object);
                    }
                    this.setPositionWithRadius((LatLng)var13_15, object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 14: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    object = this.getStreetViewPanoramaLocation();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 15: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    this.setOnStreetViewPanoramaChangeListener(q.a.bh(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 16: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    this.setOnStreetViewPanoramaCameraChangeListener(p.a.bg(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 17: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    this.setOnStreetViewPanoramaClickListener(r.a.bi(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 18: {
                    object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    object = this.pointToOrientation(d.a.am(object.readStrongBinder()));
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 19: 
            }
            object.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            object = object.readInt() != 0 ? StreetViewPanoramaOrientation.CREATOR.cT((Parcel)object) : null;
            d = this.orientationToPoint((StreetViewPanoramaOrientation)object);
            parcel.writeNoException();
            object = var13_6;
            if (d != null) {
                object = d.asBinder();
            }
            parcel.writeStrongBinder((IBinder)object);
            return true;
        }

        private static class a
        implements IStreetViewPanoramaDelegate {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void animateTo(StreetViewPanoramaCamera streetViewPanoramaCamera, long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    if (streetViewPanoramaCamera != null) {
                        parcel.writeInt(1);
                        streetViewPanoramaCamera.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeLong(l);
                    this.lb.transact(9, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            @Override
            public void enablePanning(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(2, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }

            @Override
            public void enableStreetNames(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(4, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }

            @Override
            public void enableUserNavigation(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(3, parcel2, parcel, 0);
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
            public void enableZoom(boolean bl) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    if (!bl) {
                        n = 0;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
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
            public StreetViewPanoramaCamera getPanoramaCamera() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    this.lb.transact(10, parcel, parcel2, 0);
                    parcel2.readException();
                    StreetViewPanoramaCamera streetViewPanoramaCamera = parcel2.readInt() != 0 ? StreetViewPanoramaCamera.CREATOR.cQ(parcel2) : null;
                    return streetViewPanoramaCamera;
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
            public StreetViewPanoramaLocation getStreetViewPanoramaLocation() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    this.lb.transact(14, parcel, parcel2, 0);
                    parcel2.readException();
                    StreetViewPanoramaLocation streetViewPanoramaLocation = parcel2.readInt() != 0 ? StreetViewPanoramaLocation.CREATOR.cS(parcel2) : null;
                    return streetViewPanoramaLocation;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public boolean isPanningGesturesEnabled() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    this.lb.transact(6, parcel, parcel2, 0);
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
            public boolean isStreetNamesEnabled() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    this.lb.transact(8, parcel, parcel2, 0);
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
            public boolean isUserNavigationEnabled() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    this.lb.transact(7, parcel, parcel2, 0);
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
            public boolean isZoomGesturesEnabled() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    this.lb.transact(5, parcel, parcel2, 0);
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
            public d orientationToPoint(StreetViewPanoramaOrientation object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(19, parcel, parcel2, 0);
                    parcel2.readException();
                    object = d.a.am(parcel2.readStrongBinder());
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
            public StreetViewPanoramaOrientation pointToOrientation(d object) throws RemoteException {
                Object var2_3 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(18, parcel, parcel2, 0);
                    parcel2.readException();
                    object = var2_3;
                    if (parcel2.readInt() != 0) {
                        object = StreetViewPanoramaOrientation.CREATOR.cT(parcel2);
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return object;
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
            public void setOnStreetViewPanoramaCameraChangeListener(p object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(16, parcel, parcel2, 0);
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
            public void setOnStreetViewPanoramaChangeListener(q object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(15, parcel, parcel2, 0);
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
            public void setOnStreetViewPanoramaClickListener(r object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(17, parcel, parcel2, 0);
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
            public void setPosition(LatLng latLng) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    if (latLng != null) {
                        parcel.writeInt(1);
                        latLng.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void setPositionWithID(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    parcel.writeString(string);
                    this.lb.transact(11, parcel, parcel2, 0);
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
            public void setPositionWithRadius(LatLng latLng, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                    if (latLng != null) {
                        parcel.writeInt(1);
                        latLng.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeInt(n);
                    this.lb.transact(13, parcel, parcel2, 0);
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

