/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ic;

public interface id
extends IInterface {
    public void a(ic var1) throws RemoteException;

    public void a(ic var1, int var2) throws RemoteException;

    public void a(ic var1, int var2, String var3, byte[] var4) throws RemoteException;

    public void a(ic var1, int var2, byte[] var3) throws RemoteException;

    public void b(ic var1) throws RemoteException;

    public void b(ic var1, int var2) throws RemoteException;

    public void c(ic var1) throws RemoteException;

    public int fq() throws RemoteException;

    public int fr() throws RemoteException;

    public static abstract class com.google.android.gms.internal.id$a
    extends Binder
    implements id {
        public static id K(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements id {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(ic var1) throws RemoteException;

            @Override
            public void a(ic var1, int var2) throws RemoteException;

            @Override
            public void a(ic var1, int var2, String var3, byte[] var4) throws RemoteException;

            @Override
            public void a(ic var1, int var2, byte[] var3) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(ic var1) throws RemoteException;

            @Override
            public void b(ic var1, int var2) throws RemoteException;

            @Override
            public void c(ic var1) throws RemoteException;

            @Override
            public int fq() throws RemoteException;

            @Override
            public int fr() throws RemoteException;
        }

    }

}

