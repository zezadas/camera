/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.d;

public interface f
extends IInterface {
    public void a(d var1) throws RemoteException;

    public void onIndoorBuildingFocused() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.maps.internal.f$a
    extends Binder
    implements f {
        public com.google.android.gms.maps.internal.f$a();

        public static f aW(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements f {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(d var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void onIndoorBuildingFocused() throws RemoteException;
        }

    }

}

