/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.hm;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hw;

public interface hv
extends IInterface {
    public void a(hm.a var1, hw var2) throws RemoteException;

    public void a(hw var1) throws RemoteException;

    public void a(hw var1, String var2, hs[] var3) throws RemoteException;

    public void a(hw var1, boolean var2) throws RemoteException;

    public void b(hw var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.hv$a
    extends Binder
    implements hv {
        public static hv F(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements hv {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(hm.a var1, hw var2) throws RemoteException;

            @Override
            public void a(hw var1) throws RemoteException;

            @Override
            public void a(hw var1, String var2, hs[] var3) throws RemoteException;

            @Override
            public void a(hw var1, boolean var2) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(hw var1) throws RemoteException;
        }

    }

}

