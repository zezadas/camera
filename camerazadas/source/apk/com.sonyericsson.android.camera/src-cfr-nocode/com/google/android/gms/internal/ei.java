/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ei
extends IInterface {
    public void onActivityResult(int var1, int var2, Intent var3) throws RemoteException;

    public void onCreate() throws RemoteException;

    public void onDestroy() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.ei$a
    extends Binder
    implements ei {
        public com.google.android.gms.internal.ei$a();

        public static ei u(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ei {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void onActivityResult(int var1, int var2, Intent var3) throws RemoteException;

            @Override
            public void onCreate() throws RemoteException;

            @Override
            public void onDestroy() throws RemoteException;
        }

    }

}

