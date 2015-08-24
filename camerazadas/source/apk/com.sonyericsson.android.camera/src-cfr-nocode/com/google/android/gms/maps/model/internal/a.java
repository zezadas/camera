/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

public interface a
extends IInterface {
    public d b(Bitmap var1) throws RemoteException;

    public d c(float var1) throws RemoteException;

    public d ca(String var1) throws RemoteException;

    public d cb(String var1) throws RemoteException;

    public d cc(String var1) throws RemoteException;

    public d eN(int var1) throws RemoteException;

    public d mS() throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.a$a
    extends Binder
    implements com.google.android.gms.maps.model.internal.a {
        public static com.google.android.gms.maps.model.internal.a bp(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements com.google.android.gms.maps.model.internal.a {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public d b(Bitmap var1) throws RemoteException;

            @Override
            public d c(float var1) throws RemoteException;

            @Override
            public d ca(String var1) throws RemoteException;

            @Override
            public d cb(String var1) throws RemoteException;

            @Override
            public d cc(String var1) throws RemoteException;

            @Override
            public d eN(int var1) throws RemoteException;

            @Override
            public d mS() throws RemoteException;
        }

    }

}

