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
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;

public interface IProjectionDelegate
extends IInterface {
    public LatLng fromScreenLocation(d var1) throws RemoteException;

    public VisibleRegion getVisibleRegion() throws RemoteException;

    public d toScreenLocation(LatLng var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.IProjectionDelegate$a
    extends Binder
    implements IProjectionDelegate {
        public static IProjectionDelegate bj(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements IProjectionDelegate {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public LatLng fromScreenLocation(d var1) throws RemoteException;

            @Override
            public VisibleRegion getVisibleRegion() throws RemoteException;

            @Override
            public d toScreenLocation(LatLng var1) throws RemoteException;
        }

    }

}

