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
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.model.internal.a;

public interface c
extends IInterface {
    public IMapViewDelegate a(d var1, GoogleMapOptions var2) throws RemoteException;

    public IStreetViewPanoramaViewDelegate a(d var1, StreetViewPanoramaOptions var2) throws RemoteException;

    public void a(d var1, int var2) throws RemoteException;

    public void i(d var1) throws RemoteException;

    public IMapFragmentDelegate j(d var1) throws RemoteException;

    public IStreetViewPanoramaFragmentDelegate k(d var1) throws RemoteException;

    public ICameraUpdateFactoryDelegate mI() throws RemoteException;

    public com.google.android.gms.maps.model.internal.a mJ() throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.c$a
    extends Binder
    implements c {
        public static c aP(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
            if (iInterface != null && iInterface instanceof c) {
                return (c)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            IInterface iInterface = null;
            Object var8_6 = null;
            Object var9_7 = null;
            IInterface iInterface2 = null;
            Object var10_9 = null;
            Object var7_10 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.maps.internal.ICreator");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    this.i(d.a.am(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    iInterface = this.j(d.a.am(object.readStrongBinder()));
                    parcel.writeNoException();
                    object = var7_10;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    iInterface2 = d.a.am(object.readStrongBinder());
                    object = object.readInt() != 0 ? GoogleMapOptions.CREATOR.cG((Parcel)object) : null;
                    iInterface2 = this.a((d)iInterface2, (GoogleMapOptions)object);
                    parcel.writeNoException();
                    object = iInterface;
                    if (iInterface2 != null) {
                        object = iInterface2.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    iInterface = this.mI();
                    parcel.writeNoException();
                    object = var8_6;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 5: {
                    object.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    iInterface = this.mJ();
                    parcel.writeNoException();
                    object = var9_7;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 6: {
                    object.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    this.a(d.a.am(object.readStrongBinder()), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 7: {
                    object.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    iInterface = d.a.am(object.readStrongBinder());
                    object = object.readInt() != 0 ? StreetViewPanoramaOptions.CREATOR.cH((Parcel)object) : null;
                    iInterface = this.a((d)iInterface, (StreetViewPanoramaOptions)object);
                    parcel.writeNoException();
                    object = iInterface2;
                    if (iInterface != null) {
                        object = iInterface.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 8: 
            }
            object.enforceInterface("com.google.android.gms.maps.internal.ICreator");
            iInterface = this.k(d.a.am(object.readStrongBinder()));
            parcel.writeNoException();
            object = var10_9;
            if (iInterface != null) {
                object = iInterface.asBinder();
            }
            parcel.writeStrongBinder((IBinder)object);
            return true;
        }

        private static class a
        implements c {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public IMapViewDelegate a(d object, GoogleMapOptions googleMapOptions) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (googleMapOptions != null) {
                        parcel.writeInt(1);
                        googleMapOptions.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    object = IMapViewDelegate.a.aU(parcel2.readStrongBinder());
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
            public IStreetViewPanoramaViewDelegate a(d object, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (streetViewPanoramaOptions != null) {
                        parcel.writeInt(1);
                        streetViewPanoramaOptions.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(7, parcel, parcel2, 0);
                    parcel2.readException();
                    object = IStreetViewPanoramaViewDelegate.a.bn(parcel2.readStrongBinder());
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
            public void a(d object, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
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

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void i(d object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(1, parcel, parcel2, 0);
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
            public IMapFragmentDelegate j(d object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    object = IMapFragmentDelegate.a.aT(parcel2.readStrongBinder());
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
            public IStreetViewPanoramaFragmentDelegate k(d object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(8, parcel, parcel2, 0);
                    parcel2.readException();
                    object = IStreetViewPanoramaFragmentDelegate.a.bm(parcel2.readStrongBinder());
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

            @Override
            public ICameraUpdateFactoryDelegate mI() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    this.lb.transact(4, parcel, parcel2, 0);
                    parcel2.readException();
                    ICameraUpdateFactoryDelegate iCameraUpdateFactoryDelegate = ICameraUpdateFactoryDelegate.a.aN(parcel2.readStrongBinder());
                    return iCameraUpdateFactoryDelegate;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public com.google.android.gms.maps.model.internal.a mJ() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    this.lb.transact(5, parcel, parcel2, 0);
                    parcel2.readException();
                    com.google.android.gms.maps.model.internal.a a = a.a.bp(parcel2.readStrongBinder());
                    return a;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }
        }

    }

}

