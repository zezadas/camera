/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.nz;

public interface b
extends IInterface {
    public void a(int var1, Bundle var2, Bundle var3) throws RemoteException;

    public void a(int var1, Bundle var2, ParcelFileDescriptor var3) throws RemoteException;

    public void a(int var1, Bundle var2, jp var3) throws RemoteException;

    public void a(int var1, nz var2) throws RemoteException;

    public void a(DataHolder var1, String var2) throws RemoteException;

    public void a(DataHolder var1, String var2, String var3) throws RemoteException;

    public void aB(Status var1) throws RemoteException;

    public void ce(String var1) throws RemoteException;

    public void cf(String var1) throws RemoteException;

    public void h(int var1, Bundle var2) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.plus.internal.b$a
    extends Binder
    implements b {
        public com.google.android.gms.plus.internal.b$a();

        public static b bE(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements b {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(int var1, Bundle var2, Bundle var3) throws RemoteException;

            @Override
            public void a(int var1, Bundle var2, ParcelFileDescriptor var3) throws RemoteException;

            @Override
            public void a(int var1, Bundle var2, jp var3) throws RemoteException;

            @Override
            public void a(int var1, nz var2) throws RemoteException;

            @Override
            public void a(DataHolder var1, String var2) throws RemoteException;

            @Override
            public void a(DataHolder var1, String var2, String var3) throws RemoteException;

            @Override
            public void aB(Status var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void ce(String var1) throws RemoteException;

            @Override
            public void cf(String var1) throws RemoteException;

            @Override
            public void h(int var1, Bundle var2) throws RemoteException;
        }

    }

}

