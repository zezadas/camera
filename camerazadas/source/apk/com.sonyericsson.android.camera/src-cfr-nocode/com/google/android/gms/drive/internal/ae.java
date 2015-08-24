/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ae
extends IInterface {
    public void L(boolean var1) throws RemoteException;

    public static abstract class com.google.android.gms.drive.internal.ae$a
    extends Binder
    implements ae {
        public static ae X(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ae {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void L(boolean var1) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

