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
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.op;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.MaskedWallet;

public interface ow
extends IInterface {
    public void a(int var1, FullWallet var2, Bundle var3) throws RemoteException;

    public void a(int var1, MaskedWallet var2, Bundle var3) throws RemoteException;

    public void a(int var1, boolean var2, Bundle var3) throws RemoteException;

    public void a(Status var1, op var2, Bundle var3) throws RemoteException;

    public void i(int var1, Bundle var2) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.ow$a
    extends Binder
    implements ow {
        public com.google.android.gms.internal.ow$a();

        public static ow bO(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ow {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(int var1, FullWallet var2, Bundle var3) throws RemoteException;

            @Override
            public void a(int var1, MaskedWallet var2, Bundle var3) throws RemoteException;

            @Override
            public void a(int var1, boolean var2, Bundle var3) throws RemoteException;

            @Override
            public void a(Status var1, op var2, Bundle var3) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void i(int var1, Bundle var2) throws RemoteException;
        }

    }

}

