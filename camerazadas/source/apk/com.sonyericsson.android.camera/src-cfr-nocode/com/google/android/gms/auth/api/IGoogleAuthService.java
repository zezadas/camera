/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.GoogleAuthApiRequest;
import com.google.android.gms.auth.api.IGoogleAuthApiCallbacks;

public interface IGoogleAuthService
extends IInterface {
    public void sendConnection(IGoogleAuthApiCallbacks var1, GoogleAuthApiRequest var2) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Stub
    extends Binder
    implements IGoogleAuthService {
        public Stub();

        public static IGoogleAuthService asInterface(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements IGoogleAuthService {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void sendConnection(IGoogleAuthApiCallbacks var1, GoogleAuthApiRequest var2) throws RemoteException;
        }

    }

}

