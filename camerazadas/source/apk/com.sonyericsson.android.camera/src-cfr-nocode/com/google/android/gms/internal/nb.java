/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.na;

public interface nb
extends IInterface {
    public void a(na var1, Uri var2, Bundle var3, boolean var4) throws RemoteException;

    public static abstract class com.google.android.gms.internal.nb$a
    extends Binder
    implements nb {
        public static nb bA(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements nb {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(na var1, Uri var2, Bundle var3, boolean var4) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

