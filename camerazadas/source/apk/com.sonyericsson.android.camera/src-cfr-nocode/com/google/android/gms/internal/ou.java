/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.or;
import com.google.android.gms.internal.os;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public interface ou
extends IInterface {
    public or a(d var1, c var2, WalletFragmentOptions var3, os var4) throws RemoteException;

    public static abstract class com.google.android.gms.internal.ou$a
    extends Binder
    implements ou {
        public static ou bM(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ou {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public or a(d var1, c var2, WalletFragmentOptions var3, os var4) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

