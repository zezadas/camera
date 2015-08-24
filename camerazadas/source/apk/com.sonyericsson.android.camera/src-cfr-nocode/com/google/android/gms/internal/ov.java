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

public interface ov
extends IInterface {
    public void b(int var1, int var2, Bundle var3) throws RemoteException;

    public static abstract class com.google.android.gms.internal.ov$a
    extends Binder
    implements ov {
        public static ov bN(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ov {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void b(int var1, int var2, Bundle var3) throws RemoteException;
        }

    }

}

