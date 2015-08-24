/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.internal.ah;
import com.google.android.gms.wearable.internal.ak;

public interface ae
extends IInterface {
    public void Z(DataHolder var1) throws RemoteException;

    public void a(ah var1) throws RemoteException;

    public void a(ak var1) throws RemoteException;

    public void b(ak var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.wearable.internal.ae$a
    extends Binder
    implements ae {
        public com.google.android.gms.wearable.internal.ae$a();

        public static ae bS(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ae {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void Z(DataHolder var1) throws RemoteException;

            @Override
            public void a(ah var1) throws RemoteException;

            @Override
            public void a(ak var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(ak var1) throws RemoteException;
        }

    }

}

