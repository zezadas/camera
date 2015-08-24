/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ni;
import com.google.android.gms.internal.nm;
import java.util.List;

public interface nh
extends IInterface {
    public void a(String var1, nm var2, ni var3) throws RemoteException;

    public void a(String var1, nm var2, List<ni> var3) throws RemoteException;

    public void a(String var1, nm var2, byte[] var3) throws RemoteException;

    public static abstract class com.google.android.gms.internal.nh$a
    extends Binder
    implements nh {
        public static nh bC(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements nh {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(String var1, nm var2, ni var3) throws RemoteException;

            @Override
            public void a(String var1, nm var2, List<ni> var3) throws RemoteException;

            @Override
            public void a(String var1, nm var2, byte[] var3) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

