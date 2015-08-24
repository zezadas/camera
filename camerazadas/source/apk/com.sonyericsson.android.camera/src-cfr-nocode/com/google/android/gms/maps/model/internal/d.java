/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public interface d
extends IInterface {
    public boolean b(d var1) throws RemoteException;

    public int getActiveLevelIndex() throws RemoteException;

    public int getDefaultLevelIndex() throws RemoteException;

    public List<IBinder> getLevels() throws RemoteException;

    public int hashCodeRemote() throws RemoteException;

    public boolean isUnderground() throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.d$a
    extends Binder
    implements d {
        public static d bs(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements d {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public boolean b(d var1) throws RemoteException;

            @Override
            public int getActiveLevelIndex() throws RemoteException;

            @Override
            public int getDefaultLevelIndex() throws RemoteException;

            @Override
            public List<IBinder> getLevels() throws RemoteException;

            @Override
            public int hashCodeRemote() throws RemoteException;

            @Override
            public boolean isUnderground() throws RemoteException;
        }

    }

}

