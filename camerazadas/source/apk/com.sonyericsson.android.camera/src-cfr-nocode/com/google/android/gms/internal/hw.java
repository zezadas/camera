/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.hm;

public interface hw
extends IInterface {
    public void a(Status var1) throws RemoteException;

    public void a(Status var1, ParcelFileDescriptor var2) throws RemoteException;

    public void a(Status var1, boolean var2) throws RemoteException;

    public void a(hm.b var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.hw$a
    extends Binder
    implements hw {
        public com.google.android.gms.internal.hw$a();

        public static hw G(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements hw {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(Status var1) throws RemoteException;

            @Override
            public void a(Status var1, ParcelFileDescriptor var2) throws RemoteException;

            @Override
            public void a(Status var1, boolean var2) throws RemoteException;

            @Override
            public void a(hm.b var1) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

