/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;

public interface IGamesSignInCallbacks
extends IInterface {
    public void T(DataHolder var1) throws RemoteException;

    public void U(DataHolder var1) throws RemoteException;

    public void b(int var1, Intent var2) throws RemoteException;

    public void dD(int var1) throws RemoteException;

    public void dE(int var1) throws RemoteException;

    public void g(DataHolder var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Stub
    extends Binder
    implements IGamesSignInCallbacks {
        public Stub();

        public static IGamesSignInCallbacks aC(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class Proxy
        implements IGamesSignInCallbacks {
            private IBinder lb;

            Proxy(IBinder var1);

            @Override
            public void T(DataHolder var1) throws RemoteException;

            @Override
            public void U(DataHolder var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(int var1, Intent var2) throws RemoteException;

            @Override
            public void dD(int var1) throws RemoteException;

            @Override
            public void dE(int var1) throws RemoteException;

            @Override
            public void g(DataHolder var1) throws RemoteException;
        }

    }

}

