/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ek
extends IInterface {
    public void finishPurchase() throws RemoteException;

    public String getProductId() throws RemoteException;

    public Intent getPurchaseData() throws RemoteException;

    public int getResultCode() throws RemoteException;

    public boolean isVerified() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.ek$a
    extends Binder
    implements ek {
        public com.google.android.gms.internal.ek$a();

        public static ek w(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ek {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void finishPurchase() throws RemoteException;

            @Override
            public String getProductId() throws RemoteException;

            @Override
            public Intent getPurchaseData() throws RemoteException;

            @Override
            public int getResultCode() throws RemoteException;

            @Override
            public boolean isVerified() throws RemoteException;
        }

    }

}

