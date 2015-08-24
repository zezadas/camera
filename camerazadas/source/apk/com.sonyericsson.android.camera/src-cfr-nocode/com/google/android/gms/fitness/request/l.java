/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.data.BleDevice;

public interface l
extends IInterface {
    public void onDeviceFound(BleDevice var1) throws RemoteException;

    public void onScanStopped() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.fitness.request.l$a
    extends Binder
    implements l {
        public com.google.android.gms.fitness.request.l$a();

        public static l ay(IBinder var0);

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
            public IBinder asBinder();

            @Override
            public void onDeviceFound(BleDevice var1) throws RemoteException;

            @Override
            public void onScanStopped() throws RemoteException;
        }

    }

}

