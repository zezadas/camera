/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.hb;
import java.util.List;
import java.util.Map;

public interface hc
extends IInterface {
    public void a(Map var1, long var2, String var4, List<hb> var5) throws RemoteException;

    public void dH() throws RemoteException;

    public String getVersion() throws RemoteException;

    public static abstract class com.google.android.gms.internal.hc$a
    extends Binder
    implements hc {
        public static hc E(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements hc {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(Map var1, long var2, String var4, List<hb> var5) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void dH() throws RemoteException;

            @Override
            public String getVersion() throws RemoteException;
        }

    }

}

