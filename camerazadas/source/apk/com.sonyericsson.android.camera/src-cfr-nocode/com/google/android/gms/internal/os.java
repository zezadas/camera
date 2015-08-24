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

public interface os
extends IInterface {
    public void a(int var1, int var2, Bundle var3) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.os$a
    extends Binder
    implements os {
        public com.google.android.gms.internal.os$a();

        public static os bK(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements os {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(int var1, int var2, Bundle var3) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

