/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.ln;

public interface lo
extends IInterface {
    public void a(ln var1, UserAddressRequest var2, Bundle var3) throws RemoteException;

    public static abstract class com.google.android.gms.internal.lo$a
    extends Binder
    implements lo {
        public static lo aH(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements lo {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(ln var1, UserAddressRequest var2, Bundle var3) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

