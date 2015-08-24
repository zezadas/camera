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
import com.google.android.gms.internal.on;
import com.google.android.gms.internal.ov;
import com.google.android.gms.internal.ow;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.d;

public interface ot
extends IInterface {
    public void a(Bundle var1, ow var2) throws RemoteException;

    public void a(on var1, Bundle var2, ow var3) throws RemoteException;

    public void a(FullWalletRequest var1, Bundle var2, ow var3) throws RemoteException;

    public void a(MaskedWalletRequest var1, Bundle var2, ov var3) throws RemoteException;

    public void a(MaskedWalletRequest var1, Bundle var2, ow var3) throws RemoteException;

    public void a(NotifyTransactionStatusRequest var1, Bundle var2) throws RemoteException;

    public void a(d var1, Bundle var2, ow var3) throws RemoteException;

    public void a(String var1, String var2, Bundle var3, ow var4) throws RemoteException;

    public void p(Bundle var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.ot$a
    extends Binder
    implements ot {
        public static ot bL(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ot {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(Bundle var1, ow var2) throws RemoteException;

            @Override
            public void a(on var1, Bundle var2, ow var3) throws RemoteException;

            @Override
            public void a(FullWalletRequest var1, Bundle var2, ow var3) throws RemoteException;

            @Override
            public void a(MaskedWalletRequest var1, Bundle var2, ov var3) throws RemoteException;

            @Override
            public void a(MaskedWalletRequest var1, Bundle var2, ow var3) throws RemoteException;

            @Override
            public void a(NotifyTransactionStatusRequest var1, Bundle var2) throws RemoteException;

            @Override
            public void a(d var1, Bundle var2, ow var3) throws RemoteException;

            @Override
            public void a(String var1, String var2, Bundle var3, ow var4) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void p(Bundle var1) throws RemoteException;
        }

    }

}

