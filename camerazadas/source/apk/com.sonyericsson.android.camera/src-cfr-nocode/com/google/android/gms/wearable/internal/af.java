/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.c;
import com.google.android.gms.wearable.internal.ad;
import com.google.android.gms.wearable.internal.aq;
import com.google.android.gms.wearable.internal.b;

public interface af
extends IInterface {
    public void a(ad var1) throws RemoteException;

    public void a(ad var1, Uri var2) throws RemoteException;

    public void a(ad var1, Asset var2) throws RemoteException;

    public void a(ad var1, PutDataRequest var2) throws RemoteException;

    public void a(ad var1, c var2) throws RemoteException;

    public void a(ad var1, aq var2) throws RemoteException;

    public void a(ad var1, b var2) throws RemoteException;

    public void a(ad var1, String var2) throws RemoteException;

    public void a(ad var1, String var2, String var3, byte[] var4) throws RemoteException;

    public void b(ad var1) throws RemoteException;

    public void b(ad var1, Uri var2) throws RemoteException;

    public void b(ad var1, c var2) throws RemoteException;

    public void b(ad var1, String var2) throws RemoteException;

    public void c(ad var1) throws RemoteException;

    public void c(ad var1, Uri var2) throws RemoteException;

    public void c(ad var1, String var2) throws RemoteException;

    public void d(ad var1) throws RemoteException;

    public void e(ad var1) throws RemoteException;

    public void f(ad var1) throws RemoteException;

    public void g(ad var1) throws RemoteException;

    public void h(ad var1) throws RemoteException;

    public void i(ad var1) throws RemoteException;

    public static abstract class com.google.android.gms.wearable.internal.af$a
    extends Binder
    implements af {
        public static af bT(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements af {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(ad var1) throws RemoteException;

            @Override
            public void a(ad var1, Uri var2) throws RemoteException;

            @Override
            public void a(ad var1, Asset var2) throws RemoteException;

            @Override
            public void a(ad var1, PutDataRequest var2) throws RemoteException;

            @Override
            public void a(ad var1, c var2) throws RemoteException;

            @Override
            public void a(ad var1, aq var2) throws RemoteException;

            @Override
            public void a(ad var1, b var2) throws RemoteException;

            @Override
            public void a(ad var1, String var2) throws RemoteException;

            @Override
            public void a(ad var1, String var2, String var3, byte[] var4) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(ad var1) throws RemoteException;

            @Override
            public void b(ad var1, Uri var2) throws RemoteException;

            @Override
            public void b(ad var1, c var2) throws RemoteException;

            @Override
            public void b(ad var1, String var2) throws RemoteException;

            @Override
            public void c(ad var1) throws RemoteException;

            @Override
            public void c(ad var1, Uri var2) throws RemoteException;

            @Override
            public void c(ad var1, String var2) throws RemoteException;

            @Override
            public void d(ad var1) throws RemoteException;

            @Override
            public void e(ad var1) throws RemoteException;

            @Override
            public void f(ad var1) throws RemoteException;

            @Override
            public void g(ad var1) throws RemoteException;

            @Override
            public void h(ad var1) throws RemoteException;

            @Override
            public void i(ad var1) throws RemoteException;
        }

    }

}

