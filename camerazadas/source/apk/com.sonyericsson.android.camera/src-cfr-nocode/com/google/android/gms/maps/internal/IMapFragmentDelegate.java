/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;

public interface IMapFragmentDelegate
extends IInterface {
    public IGoogleMapDelegate getMap() throws RemoteException;

    public boolean isReady() throws RemoteException;

    public void onCreate(Bundle var1) throws RemoteException;

    public d onCreateView(d var1, d var2, Bundle var3) throws RemoteException;

    public void onDestroy() throws RemoteException;

    public void onDestroyView() throws RemoteException;

    public void onInflate(d var1, GoogleMapOptions var2, Bundle var3) throws RemoteException;

    public void onLowMemory() throws RemoteException;

    public void onPause() throws RemoteException;

    public void onResume() throws RemoteException;

    public void onSaveInstanceState(Bundle var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.IMapFragmentDelegate$a
    extends Binder
    implements IMapFragmentDelegate {
        public static IMapFragmentDelegate aT(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements IMapFragmentDelegate {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public IGoogleMapDelegate getMap() throws RemoteException;

            @Override
            public boolean isReady() throws RemoteException;

            @Override
            public void onCreate(Bundle var1) throws RemoteException;

            @Override
            public d onCreateView(d var1, d var2, Bundle var3) throws RemoteException;

            @Override
            public void onDestroy() throws RemoteException;

            @Override
            public void onDestroyView() throws RemoteException;

            @Override
            public void onInflate(d var1, GoogleMapOptions var2, Bundle var3) throws RemoteException;

            @Override
            public void onLowMemory() throws RemoteException;

            @Override
            public void onPause() throws RemoteException;

            @Override
            public void onResume() throws RemoteException;

            @Override
            public void onSaveInstanceState(Bundle var1) throws RemoteException;
        }

    }

}

