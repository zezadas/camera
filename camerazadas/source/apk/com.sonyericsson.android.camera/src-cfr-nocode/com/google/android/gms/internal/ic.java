/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;

public interface ic
extends IInterface {
    public void S(int var1) throws RemoteException;

    public void a(int var1, DataHolder var2) throws RemoteException;

    public void a(DataHolder var1) throws RemoteException;

    public void e(int var1, int var2) throws RemoteException;

    public void fp() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.ic$a
    extends Binder
    implements ic {
        public com.google.android.gms.internal.ic$a();

        public static ic J(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ic {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void S(int var1) throws RemoteException;

            @Override
            public void a(int var1, DataHolder var2) throws RemoteException;

            @Override
            public void a(DataHolder var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void e(int var1, int var2) throws RemoteException;

            @Override
            public void fp() throws RemoteException;
        }

    }

}

