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
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;

public interface r
extends IInterface {
    public Bundle a(String var1, Bundle var2) throws RemoteException;

    public Bundle a(String var1, String var2, Bundle var3) throws RemoteException;

    public AccountChangeEventsResponse a(AccountChangeEventsRequest var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.r$a
    extends Binder
    implements r {
        public static r a(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements r {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public Bundle a(String var1, Bundle var2) throws RemoteException;

            @Override
            public Bundle a(String var1, String var2, Bundle var3) throws RemoteException;

            @Override
            public AccountChangeEventsResponse a(AccountChangeEventsRequest var1) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

