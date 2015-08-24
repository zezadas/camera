/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface h
extends IInterface {
    public boolean a(h var1) throws RemoteException;

    public void clearTileCache() throws RemoteException;

    public boolean getFadeIn() throws RemoteException;

    public String getId() throws RemoteException;

    public float getZIndex() throws RemoteException;

    public int hashCodeRemote() throws RemoteException;

    public boolean isVisible() throws RemoteException;

    public void remove() throws RemoteException;

    public void setFadeIn(boolean var1) throws RemoteException;

    public void setVisible(boolean var1) throws RemoteException;

    public void setZIndex(float var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.h$a
    extends Binder
    implements h {
        public static h bx(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements h {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public boolean a(h var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void clearTileCache() throws RemoteException;

            @Override
            public boolean getFadeIn() throws RemoteException;

            @Override
            public String getId() throws RemoteException;

            @Override
            public float getZIndex() throws RemoteException;

            @Override
            public int hashCodeRemote() throws RemoteException;

            @Override
            public boolean isVisible() throws RemoteException;

            @Override
            public void remove() throws RemoteException;

            @Override
            public void setFadeIn(boolean var1) throws RemoteException;

            @Override
            public void setVisible(boolean var1) throws RemoteException;

            @Override
            public void setZIndex(float var1) throws RemoteException;
        }

    }

}

