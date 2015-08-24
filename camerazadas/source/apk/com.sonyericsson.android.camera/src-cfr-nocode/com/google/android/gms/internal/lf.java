/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.BleDevicesResult;

public interface lf
extends IInterface {
    public void a(BleDevicesResult var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.lf$a
    extends Binder
    implements lf {
        public com.google.android.gms.internal.lf$a();

        public static lf ax(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements lf {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(BleDevicesResult var1) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

