/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface b
extends IInterface {
    public void onCancel() throws RemoteException;

    public void onFinish() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.maps.internal.b$a
    extends Binder
    implements b {
        public com.google.android.gms.maps.internal.b$a();

        public static b aO(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements b {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void onCancel() throws RemoteException;

            @Override
            public void onFinish() throws RemoteException;
        }

    }

}

