/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.es;

public interface et
extends IInterface {
    public void a(es var1) throws RemoteException;

    public boolean e(String var1, String var2) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.et$a
    extends Binder
    implements et {
        public com.google.android.gms.internal.et$a();

        public static et A(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements et {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(es var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public boolean e(String var1, String var2) throws RemoteException;
        }

    }

}

