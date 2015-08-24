/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IUiSettingsDelegate
extends IInterface {
    public boolean isCompassEnabled() throws RemoteException;

    public boolean isIndoorLevelPickerEnabled() throws RemoteException;

    public boolean isMyLocationButtonEnabled() throws RemoteException;

    public boolean isRotateGesturesEnabled() throws RemoteException;

    public boolean isScrollGesturesEnabled() throws RemoteException;

    public boolean isTiltGesturesEnabled() throws RemoteException;

    public boolean isZoomControlsEnabled() throws RemoteException;

    public boolean isZoomGesturesEnabled() throws RemoteException;

    public void setAllGesturesEnabled(boolean var1) throws RemoteException;

    public void setCompassEnabled(boolean var1) throws RemoteException;

    public void setIndoorLevelPickerEnabled(boolean var1) throws RemoteException;

    public void setMyLocationButtonEnabled(boolean var1) throws RemoteException;

    public void setRotateGesturesEnabled(boolean var1) throws RemoteException;

    public void setScrollGesturesEnabled(boolean var1) throws RemoteException;

    public void setTiltGesturesEnabled(boolean var1) throws RemoteException;

    public void setZoomControlsEnabled(boolean var1) throws RemoteException;

    public void setZoomGesturesEnabled(boolean var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.IUiSettingsDelegate$a
    extends Binder
    implements IUiSettingsDelegate {
        public static IUiSettingsDelegate bo(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements IUiSettingsDelegate {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public boolean isCompassEnabled() throws RemoteException;

            @Override
            public boolean isIndoorLevelPickerEnabled() throws RemoteException;

            @Override
            public boolean isMyLocationButtonEnabled() throws RemoteException;

            @Override
            public boolean isRotateGesturesEnabled() throws RemoteException;

            @Override
            public boolean isScrollGesturesEnabled() throws RemoteException;

            @Override
            public boolean isTiltGesturesEnabled() throws RemoteException;

            @Override
            public boolean isZoomControlsEnabled() throws RemoteException;

            @Override
            public boolean isZoomGesturesEnabled() throws RemoteException;

            @Override
            public void setAllGesturesEnabled(boolean var1) throws RemoteException;

            @Override
            public void setCompassEnabled(boolean var1) throws RemoteException;

            @Override
            public void setIndoorLevelPickerEnabled(boolean var1) throws RemoteException;

            @Override
            public void setMyLocationButtonEnabled(boolean var1) throws RemoteException;

            @Override
            public void setRotateGesturesEnabled(boolean var1) throws RemoteException;

            @Override
            public void setScrollGesturesEnabled(boolean var1) throws RemoteException;

            @Override
            public void setTiltGesturesEnabled(boolean var1) throws RemoteException;

            @Override
            public void setZoomControlsEnabled(boolean var1) throws RemoteException;

            @Override
            public void setZoomGesturesEnabled(boolean var1) throws RemoteException;
        }

    }

}

