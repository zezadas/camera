/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface s
extends IInterface {
    public boolean a(boolean var1) throws RemoteException;

    public void b(String var1, boolean var2) throws RemoteException;

    public String c(String var1) throws RemoteException;

    public String getId() throws RemoteException;

    public static abstract class com.google.android.gms.internal.s$a
    extends Binder
    implements s {
        public static s b(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements s {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public boolean a(boolean var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(String var1, boolean var2) throws RemoteException;

            @Override
            public String c(String var1) throws RemoteException;

            @Override
            public String getId() throws RemoteException;
        }

    }

}

