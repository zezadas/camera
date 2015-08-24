/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.f;

public interface m
extends IInterface {
    public void b(f var1) throws RemoteException;

    public void c(f var1) throws RemoteException;

    public void d(f var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.maps.internal.m$a
    extends Binder
    implements m {
        public com.google.android.gms.maps.internal.m$a();

        public static m bd(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements m {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void b(f var1) throws RemoteException;

            @Override
            public void c(f var1) throws RemoteException;

            @Override
            public void d(f var1) throws RemoteException;
        }

    }

}

