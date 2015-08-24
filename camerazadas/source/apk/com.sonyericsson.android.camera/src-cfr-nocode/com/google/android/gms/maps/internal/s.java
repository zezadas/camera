/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

public interface s
extends IInterface {
    public void h(d var1) throws RemoteException;

    public void onSnapshotReady(Bitmap var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.maps.internal.s$a
    extends Binder
    implements s {
        public com.google.android.gms.maps.internal.s$a();

        public static s bk(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements s {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void h(d var1) throws RemoteException;

            @Override
            public void onSnapshotReady(Bitmap var1) throws RemoteException;
        }

    }

}

