/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface bc
extends IInterface {
    public void onAdClosed() throws RemoteException;

    public void onAdFailedToLoad(int var1) throws RemoteException;

    public void onAdLeftApplication() throws RemoteException;

    public void onAdLoaded() throws RemoteException;

    public void onAdOpened() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.bc$a
    extends Binder
    implements bc {
        public com.google.android.gms.internal.bc$a();

        public static bc e(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements bc {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void onAdClosed() throws RemoteException;

            @Override
            public void onAdFailedToLoad(int var1) throws RemoteException;

            @Override
            public void onAdLeftApplication() throws RemoteException;

            @Override
            public void onAdLoaded() throws RemoteException;

            @Override
            public void onAdOpened() throws RemoteException;
        }

    }

}

