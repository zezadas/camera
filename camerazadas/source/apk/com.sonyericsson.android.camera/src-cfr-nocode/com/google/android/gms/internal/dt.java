/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

public interface dt
extends IInterface {
    public IBinder a(d var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.dt$a
    extends Binder
    implements dt {
        public static dt q(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements dt {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder a(d var1) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

