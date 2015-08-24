/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

public interface c
extends IInterface {
    public d a(d var1, int var2, int var3, String var4, int var5) throws RemoteException;

    public d a(d var1, int var2, int var3, String var4, String var5) throws RemoteException;

    public static abstract class com.google.android.gms.plus.internal.c$a
    extends Binder
    implements c {
        public static c bF(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements c {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public d a(d var1, int var2, int var3, String var4, int var5) throws RemoteException;

            @Override
            public d a(d var1, int var2, int var3, String var4, String var5) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

