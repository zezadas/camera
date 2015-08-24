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
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public interface ICameraUpdateFactoryDelegate
extends IInterface {
    public d newCameraPosition(CameraPosition var1) throws RemoteException;

    public d newLatLng(LatLng var1) throws RemoteException;

    public d newLatLngBounds(LatLngBounds var1, int var2) throws RemoteException;

    public d newLatLngBoundsWithSize(LatLngBounds var1, int var2, int var3, int var4) throws RemoteException;

    public d newLatLngZoom(LatLng var1, float var2) throws RemoteException;

    public d scrollBy(float var1, float var2) throws RemoteException;

    public d zoomBy(float var1) throws RemoteException;

    public d zoomByWithFocus(float var1, int var2, int var3) throws RemoteException;

    public d zoomIn() throws RemoteException;

    public d zoomOut() throws RemoteException;

    public d zoomTo(float var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate$a
    extends Binder
    implements ICameraUpdateFactoryDelegate {
        public static ICameraUpdateFactoryDelegate aN(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ICameraUpdateFactoryDelegate {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public d newCameraPosition(CameraPosition var1) throws RemoteException;

            @Override
            public d newLatLng(LatLng var1) throws RemoteException;

            @Override
            public d newLatLngBounds(LatLngBounds var1, int var2) throws RemoteException;

            @Override
            public d newLatLngBoundsWithSize(LatLngBounds var1, int var2, int var3, int var4) throws RemoteException;

            @Override
            public d newLatLngZoom(LatLng var1, float var2) throws RemoteException;

            @Override
            public d scrollBy(float var1, float var2) throws RemoteException;

            @Override
            public d zoomBy(float var1) throws RemoteException;

            @Override
            public d zoomByWithFocus(float var1, int var2, int var3) throws RemoteException;

            @Override
            public d zoomIn() throws RemoteException;

            @Override
            public d zoomOut() throws RemoteException;

            @Override
            public d zoomTo(float var1) throws RemoteException;
        }

    }

}

