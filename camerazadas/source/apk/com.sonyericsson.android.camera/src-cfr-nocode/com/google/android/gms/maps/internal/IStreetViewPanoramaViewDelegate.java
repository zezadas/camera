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
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;

public interface IStreetViewPanoramaViewDelegate
extends IInterface {
    public IStreetViewPanoramaDelegate getStreetViewPanorama() throws RemoteException;

    public d getView() throws RemoteException;

    public void onCreate(Bundle var1) throws RemoteException;

    public void onDestroy() throws RemoteException;

    public void onLowMemory() throws RemoteException;

    public void onPause() throws RemoteException;

    public void onResume() throws RemoteException;

    public void onSaveInstanceState(Bundle var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate$a
    extends Binder
    implements IStreetViewPanoramaViewDelegate {
        public static IStreetViewPanoramaViewDelegate bn(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements IStreetViewPanoramaViewDelegate {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public IStreetViewPanoramaDelegate getStreetViewPanorama() throws RemoteException;

            @Override
            public d getView() throws RemoteException;

            @Override
            public void onCreate(Bundle var1) throws RemoteException;

            @Override
            public void onDestroy() throws RemoteException;

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

