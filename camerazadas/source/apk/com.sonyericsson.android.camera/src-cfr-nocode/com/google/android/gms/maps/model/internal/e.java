/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface e
extends IInterface {
    public boolean a(e var1) throws RemoteException;

    public void activate() throws RemoteException;

    public String getName() throws RemoteException;

    public String getShortName() throws RemoteException;

    public int hashCodeRemote() throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.e$a
    extends Binder
    implements e {
        public static e bt(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements e {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public boolean a(e var1) throws RemoteException;

            @Override
            public void activate() throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public String getName() throws RemoteException;

            @Override
            public String getShortName() throws RemoteException;

            @Override
            public int hashCodeRemote() throws RemoteException;
        }

    }

}

