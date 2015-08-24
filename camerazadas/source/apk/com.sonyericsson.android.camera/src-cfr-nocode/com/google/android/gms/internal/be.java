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
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ct;

public interface be
extends IInterface {
    public IBinder a(d var1, ay var2, String var3, ct var4, int var5) throws RemoteException;

    public static abstract class com.google.android.gms.internal.be$a
    extends Binder
    implements be {
        public static be g(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements be {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder a(d var1, ay var2, String var3, ct var4, int var5) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

