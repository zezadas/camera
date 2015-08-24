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
import java.util.List;

public interface g
extends IInterface {
    public boolean a(g var1) throws RemoteException;

    public int getFillColor() throws RemoteException;

    public List getHoles() throws RemoteException;

    public String getId() throws RemoteException;

    public List<LatLng> getPoints() throws RemoteException;

    public int getStrokeColor() throws RemoteException;

    public float getStrokeWidth() throws RemoteException;

    public float getZIndex() throws RemoteException;

    public int hashCodeRemote() throws RemoteException;

    public boolean isGeodesic() throws RemoteException;

    public boolean isVisible() throws RemoteException;

    public void remove() throws RemoteException;

    public void setFillColor(int var1) throws RemoteException;

    public void setGeodesic(boolean var1) throws RemoteException;

    public void setHoles(List var1) throws RemoteException;

    public void setPoints(List<LatLng> var1) throws RemoteException;

    public void setStrokeColor(int var1) throws RemoteException;

    public void setStrokeWidth(float var1) throws RemoteException;

    public void setVisible(boolean var1) throws RemoteException;

    public void setZIndex(float var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.g$a
    extends Binder
    implements g {
        public static g bv(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements g {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public boolean a(g var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public int getFillColor() throws RemoteException;

            @Override
            public List getHoles() throws RemoteException;

            @Override
            public String getId() throws RemoteException;

            @Override
            public List<LatLng> getPoints() throws RemoteException;

            @Override
            public int getStrokeColor() throws RemoteException;

            @Override
            public float getStrokeWidth() throws RemoteException;

            @Override
            public float getZIndex() throws RemoteException;

            @Override
            public int hashCodeRemote() throws RemoteException;

            @Override
            public boolean isGeodesic() throws RemoteException;

            @Override
            public boolean isVisible() throws RemoteException;

            @Override
            public void remove() throws RemoteException;

            @Override
            public void setFillColor(int var1) throws RemoteException;

            @Override
            public void setGeodesic(boolean var1) throws RemoteException;

            @Override
            public void setHoles(List var1) throws RemoteException;

            @Override
            public void setPoints(List<LatLng> var1) throws RemoteException;

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

