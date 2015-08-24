/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ds
extends IInterface {
    public void U() throws RemoteException;

    public void onCreate(Bundle var1) throws RemoteException;

    public void onDestroy() throws RemoteException;

    public void onPause() throws RemoteException;

    public void onRestart() throws RemoteException;

    public void onResume() throws RemoteException;

    public void onSaveInstanceState(Bundle var1) throws RemoteException;

    public void onStart() throws RemoteException;

    public void onStop() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.ds$a
    extends Binder
    implements ds {
        public com.google.android.gms.internal.ds$a();

        public static ds p(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ds {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void U() throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void onCreate(Bundle var1) throws RemoteException;

            @Override
            public void onDestroy() throws RemoteException;

            @Override
            public void onPause() throws RemoteException;

            @Override
            public void onRestart() throws RemoteException;

            @Override
            public void onResume() throws RemoteException;

            @Override
            public void onSaveInstanceState(Bundle var1) throws RemoteException;

            @Override
            public void onStart() throws RemoteException;

            @Override
            public void onStop() throws RemoteException;
        }

    }

}

