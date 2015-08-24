/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface eg
extends IInterface {
    public String getProductId() throws RemoteException;

    public void recordPlayBillingResolution(int var1) throws RemoteException;

    public void recordResolution(int var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.eg$a
    extends Binder
    implements eg {
        public com.google.android.gms.internal.eg$a();

        public static eg s(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements eg {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public String getProductId() throws RemoteException;

            @Override
            public void recordPlayBillingResolution(int var1) throws RemoteException;

            @Override
            public void recordResolution(int var1) throws RemoteException;
        }

    }

}

