/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public interface c
extends IInterface {
    public void a(float var1, float var2) throws RemoteException;

    public boolean a(c var1) throws RemoteException;

    public float getBearing() throws RemoteException;

    public LatLngBounds getBounds() throws RemoteException;

    public float getHeight() throws RemoteException;

    public String getId() throws RemoteException;

    public LatLng getPosition() throws RemoteException;

    public float getTransparency() throws RemoteException;

    public float getWidth() throws RemoteException;

    public float getZIndex() throws RemoteException;

    public int hashCodeRemote() throws RemoteException;

    public boolean isVisible() throws RemoteException;

    public void m(d var1) throws RemoteException;

    public void remove() throws RemoteException;

    public void setBearing(float var1) throws RemoteException;

    public void setDimensions(float var1) throws RemoteException;

    public void setPosition(LatLng var1) throws RemoteException;

    public void setPositionFromBounds(LatLngBounds var1) throws RemoteException;

    public void setTransparency(float var1) throws RemoteException;

    public void setVisible(boolean var1) throws RemoteException;

    public void setZIndex(float var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.c$a
    extends Binder
    implements c {
        public static c br(IBinder var0);

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
            public void a(float var1, float var2) throws RemoteException;

            @Override
            public boolean a(c var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public float getBearing() throws RemoteException;

            @Override
            public LatLngBounds getBounds() throws RemoteException;

            @Override
            public float getHeight() throws RemoteException;

            @Override
            public String getId() throws RemoteException;

            @Override
            public LatLng getPosition() throws RemoteException;

            @Override
            public float getTransparency() throws RemoteException;

            @Override
            public float getWidth() throws RemoteException;

            @Override
            public float getZIndex() throws RemoteException;

            @Override
            public int hashCodeRemote() throws RemoteException;

            @Override
            public boolean isVisible() throws RemoteException;

            @Override
            public void m(d var1) throws RemoteException;

            @Override
            public void remove() throws RemoteException;

            @Override
            public void setBearing(float var1) throws RemoteException;

            @Override
            public void setDimensions(float var1) throws RemoteException;

            @Override
            public void setPosition(LatLng var1) throws RemoteException;

            @Override
            public void setPositionFromBounds(LatLngBounds var1) throws RemoteException;

            @Override
            public void setTransparency(float var1) throws RemoteException;

            @Override
            public void setVisible(boolean var1) throws RemoteException;

            @Override
            public void setZIndex(float var1) throws RemoteException;
        }

    }

}

