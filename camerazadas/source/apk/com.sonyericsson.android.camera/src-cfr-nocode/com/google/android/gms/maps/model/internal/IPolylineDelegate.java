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

public interface IPolylineDelegate
extends IInterface {
    public boolean equalsRemote(IPolylineDelegate var1) throws RemoteException;

    public int getColor() throws RemoteException;

    public String getId() throws RemoteException;

    public List<LatLng> getPoints() throws RemoteException;

    public float getWidth() throws RemoteException;

    public float getZIndex() throws RemoteException;

    public int hashCodeRemote() throws RemoteException;

    public boolean isGeodesic() throws RemoteException;

    public boolean isVisible() throws RemoteException;

    public void remove() throws RemoteException;

    public void setColor(int var1) throws RemoteException;

    public void setGeodesic(boolean var1) throws RemoteException;

    public void setPoints(List<LatLng> var1) throws RemoteException;

    public void setVisible(boolean var1) throws RemoteException;

    public void setWidth(float var1) throws RemoteException;

    public void setZIndex(float var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.IPolylineDelegate$a
    extends Binder
    implements IPolylineDelegate {
        public static IPolylineDelegate bw(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements IPolylineDelegate {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public boolean equalsRemote(IPolylineDelegate var1) throws RemoteException;

            @Override
            public int getColor() throws RemoteException;

            @Override
            public String getId() throws RemoteException;

            @Override
            public List<LatLng> getPoints() throws RemoteException;

            @Override
            public float getWidth() throws RemoteException;

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
            public void setColor(int var1) throws RemoteException;

            @Override
            public void setGeodesic(boolean var1) throws RemoteException;

            @Override
            public void setPoints(List<LatLng> var1) throws RemoteException;

            @Override
            public void setVisible(boolean var1) throws RemoteException;

            @Override
            public void setWidth(float var1) throws RemoteException;

            @Override
            public void setZIndex(float var1) throws RemoteException;
        }

    }

}

