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

public interface f
extends IInterface {
    public float getAlpha() throws RemoteException;

    public String getId() throws RemoteException;

    public LatLng getPosition() throws RemoteException;

    public float getRotation() throws RemoteException;

    public String getSnippet() throws RemoteException;

    public String getTitle() throws RemoteException;

    public boolean h(f var1) throws RemoteException;

    public int hashCodeRemote() throws RemoteException;

    public void hideInfoWindow() throws RemoteException;

    public boolean isDraggable() throws RemoteException;

    public boolean isFlat() throws RemoteException;

    public boolean isInfoWindowShown() throws RemoteException;

    public boolean isVisible() throws RemoteException;

    public void n(d var1) throws RemoteException;

    public void remove() throws RemoteException;

    public void setAlpha(float var1) throws RemoteException;

    public void setAnchor(float var1, float var2) throws RemoteException;

    public void setDraggable(boolean var1) throws RemoteException;

    public void setFlat(boolean var1) throws RemoteException;

    public void setInfoWindowAnchor(float var1, float var2) throws RemoteException;

    public void setPosition(LatLng var1) throws RemoteException;

    public void setRotation(float var1) throws RemoteException;

    public void setSnippet(String var1) throws RemoteException;

    public void setTitle(String var1) throws RemoteException;

    public void setVisible(boolean var1) throws RemoteException;

    public void showInfoWindow() throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.f$a
    extends Binder
    implements f {
        public static f bu(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements f {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public float getAlpha() throws RemoteException;

            @Override
            public String getId() throws RemoteException;

            @Override
            public LatLng getPosition() throws RemoteException;

            @Override
            public float getRotation() throws RemoteException;

            @Override
            public String getSnippet() throws RemoteException;

            @Override
            public String getTitle() throws RemoteException;

            @Override
            public boolean h(f var1) throws RemoteException;

            @Override
            public int hashCodeRemote() throws RemoteException;

            @Override
            public void hideInfoWindow() throws RemoteException;

            @Override
            public boolean isDraggable() throws RemoteException;

            @Override
            public boolean isFlat() throws RemoteException;

            @Override
            public boolean isInfoWindowShown() throws RemoteException;

            @Override
            public boolean isVisible() throws RemoteException;

            @Override
            public void n(d var1) throws RemoteException;

            @Override
            public void remove() throws RemoteException;

            @Override
            public void setAlpha(float var1) throws RemoteException;

            @Override
            public void setAnchor(float var1, float var2) throws RemoteException;

            @Override
            public void setDraggable(boolean var1) throws RemoteException;

            @Override
            public void setFlat(boolean var1) throws RemoteException;

            @Override
            public void setInfoWindowAnchor(float var1, float var2) throws RemoteException;

            @Override
            public void setPosition(LatLng var1) throws RemoteException;

            @Override
            public void setRotation(float var1) throws RemoteException;

            @Override
            public void setSnippet(String var1) throws RemoteException;

            @Override
            public void setTitle(String var1) throws RemoteException;

            @Override
            public void setVisible(boolean var1) throws RemoteException;

            @Override
            public void showInfoWindow() throws RemoteException;
        }

    }

}

