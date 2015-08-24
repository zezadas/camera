/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

public interface es
extends IInterface {
    public void ar() throws RemoteException;

    public void as() throws RemoteException;

    public void c(d var1) throws RemoteException;

    public String cu() throws RemoteException;

    public String cv() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.es$a
    extends Binder
    implements es {
        public com.google.android.gms.internal.es$a();

        public static es z(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements es {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void ar() throws RemoteException;

            @Override
            public void as() throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void c(d var1) throws RemoteException;

            @Override
            public String cu() throws RemoteException;

            @Override
            public String cv() throws RemoteException;
        }

    }

}

