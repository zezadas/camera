/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface na
extends IInterface {
    public void a(int var1, Bundle var2, int var3, Intent var4) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.na$a
    extends Binder
    implements na {
        public com.google.android.gms.internal.na$a();

        public static na bz(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements na {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(int var1, Bundle var2, int var3, Intent var4) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

