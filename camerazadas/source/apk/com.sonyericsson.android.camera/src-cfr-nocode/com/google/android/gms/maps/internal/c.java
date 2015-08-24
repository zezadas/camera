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
        public static c aP(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements c {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IMapViewDelegate a(d var1, GoogleMapOptions var2) throws RemoteException;

            @Override
            public IStreetViewPanoramaViewDelegate a(d var1, StreetViewPanoramaOptions var2) throws RemoteException;

            @Override
            public void a(d var1, int var2) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void i(d var1) throws RemoteException;

            @Override
            public IMapFragmentDelegate j(d var1) throws RemoteException;

            @Override
            public IStreetViewPanoramaFragmentDelegate k(d var1) throws RemoteException;

            @Override
            public ICameraUpdateFactoryDelegate mI() throws RemoteException;

            @Override
            public com.google.android.gms.maps.model.internal.a mJ() throws RemoteException;
        }

    }

}

