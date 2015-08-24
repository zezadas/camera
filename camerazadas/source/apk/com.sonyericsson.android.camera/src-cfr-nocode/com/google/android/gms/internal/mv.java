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

public interface mv
extends IInterface {
    public void W(DataHolder var1) throws RemoteException;

    public void X(DataHolder var1) throws RemoteException;

    public void Y(DataHolder var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.mv$a
    extends Binder
    implements mv {
        public static mv aM(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements mv {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void W(DataHolder var1) throws RemoteException;

            @Override
            public void X(DataHolder var1) throws RemoteException;

            @Override
            public void Y(DataHolder var1) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

