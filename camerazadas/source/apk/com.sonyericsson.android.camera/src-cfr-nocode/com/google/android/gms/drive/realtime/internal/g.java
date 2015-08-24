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
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.realtime.internal.event.ParcelableEventList;

public interface g
extends IInterface {
    public void a(DataHolder var1, ParcelableEventList var2) throws RemoteException;

    public void o(Status var1) throws RemoteException;

    public static abstract class com.google.android.gms.drive.realtime.internal.g$a
    extends Binder
    implements g {
        public static g ac(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements g {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(DataHolder var1, ParcelableEventList var2) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void o(Status var1) throws RemoteException;
        }

    }

}

