/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.realtime.internal.event.ParcelableEventList;

public interface j
extends IInterface {
    public void a(ParcelableEventList var1) throws RemoteException;

    public void o(Status var1) throws RemoteException;

    public static abstract class com.google.android.gms.drive.realtime.internal.j$a
    extends Binder
    implements j {
        public static j af(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements j {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(ParcelableEventList var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void o(Status var1) throws RemoteException;
        }

    }

}

