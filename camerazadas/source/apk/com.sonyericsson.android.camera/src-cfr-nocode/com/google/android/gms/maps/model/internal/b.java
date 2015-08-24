/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;

public interface b
extends IInterface {
    public boolean a(b var1) throws RemoteException;

    public LatLng getCenter() throws RemoteException;

    public int getFillColor() throws RemoteException;

    public String getId() throws RemoteException;

    public double getRadius() throws RemoteException;

    public int getStrokeColor() throws RemoteException;

    public float getStrokeWidth() throws RemoteException;

    public float getZIndex() throws RemoteException;

    public int hashCodeRemote() throws RemoteException;

    public boolean isVisible() throws RemoteException;

    public void remove() throws RemoteException;

    public void setCenter(LatLng var1) throws RemoteException;

    public void setFillColor(int var1) throws RemoteException;

    public void setRadius(double var1) throws RemoteException;

    public void setStrokeColor(int var1) throws RemoteException;

    public void setStrokeWidth(float var1) throws RemoteException;

    public void setVisible(boolean var1) throws RemoteException;

    public void setZIndex(float var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.b$a
    extends Binder
    implements b {
        public static b bq(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements b {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public boolean a(b var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public LatLng getCenter() throws RemoteException;

            @Override
            public int getFillColor() throws RemoteException;

            @Override
            public String getId() throws RemoteException;

            @Override
            public double getRadius() throws RemoteException;

            @Override
            public int getStrokeColor() throws RemoteException;

            @Override
            public float getStrokeWidth() throws RemoteException;

            @Override
            public float getZIndex() throws RemoteException;

            @Override
            public int hashCodeRemote() throws RemoteException;

            @Override
            public boolean isVisible() throws RemoteException;

            @Override
            public void remove() throws RemoteException;

            @Override
            public void setCenter(LatLng var1) throws RemoteException;

            @Override
            public void setFillColor(int var1) throws RemoteException;

            @Override
            public void setRadius(double var1) throws RemoteException;

            @Override
            public void setStrokeColor(int var1) throws RemoteException;

            @Override
            public void setStrokeWidth(float var1) throws RemoteException;

            @Override
            public void setVisible(boolean var1) throws RemoteException;

            @Override
            public void setZIndex(float var1) throws RemoteException;
        }

    }

}

