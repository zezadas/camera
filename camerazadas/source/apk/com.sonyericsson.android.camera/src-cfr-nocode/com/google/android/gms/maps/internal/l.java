/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.f;

public interface l
extends IInterface {
    public boolean a(f var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.maps.internal.l$a
    extends Binder
    implements l {
        public com.google.android.gms.maps.internal.l$a();

        public static l bc(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements l {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public boolean a(f var1) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

