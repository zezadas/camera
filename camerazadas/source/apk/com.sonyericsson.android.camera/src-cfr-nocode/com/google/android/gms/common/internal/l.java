/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.k;

public interface l
extends IInterface {
    public void a(k var1, int var2) throws RemoteException;

    public void a(k var1, int var2, String var3) throws RemoteException;

    public void a(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void a(k var1, int var2, String var3, IBinder var4, Bundle var5) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4, String var5, String[] var6) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4, String[] var5) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4, String[] var5, Bundle var6) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4, String[] var5, String var6, Bundle var7) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4, String[] var5, String var6, IBinder var7, String var8, Bundle var9) throws RemoteException;

    public void a(k var1, int var2, String var3, String[] var4, String var5, Bundle var6) throws RemoteException;

    public void b(k var1, int var2, String var3) throws RemoteException;

    public void b(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void b(k var1, int var2, String var3, String var4, String[] var5) throws RemoteException;

    public void c(k var1, int var2, String var3) throws RemoteException;

    public void c(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void d(k var1, int var2, String var3) throws RemoteException;

    public void d(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void e(k var1, int var2, String var3) throws RemoteException;

    public void e(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void f(k var1, int var2, String var3) throws RemoteException;

    public void f(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void g(k var1, int var2, String var3) throws RemoteException;

    public void g(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void h(k var1, int var2, String var3) throws RemoteException;

    public void h(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void i(k var1, int var2, String var3) throws RemoteException;

    public void i(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void j(k var1, int var2, String var3) throws RemoteException;

    public void j(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void k(k var1, int var2, String var3) throws RemoteException;

    public void k(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void l(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void m(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void n(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void o(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void p(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void q(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void r(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void s(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void t(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public static abstract class com.google.android.gms.common.internal.l$a
    extends Binder
    implements l {
        public static l Q(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements l {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(k var1, int var2) throws RemoteException;

            @Override
            public void a(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void a(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void a(k var1, int var2, String var3, IBinder var4, Bundle var5) throws RemoteException;

            @Override
            public void a(k var1, int var2, String var3, String var4) throws RemoteException;

            @Override
            public void a(k var1, int var2, String var3, String var4, String var5, String[] var6) throws RemoteException;

            @Override
            public void a(k var1, int var2, String var3, String var4, String[] var5) throws RemoteException;

            @Override
            public void a(k var1, int var2, String var3, String var4, String[] var5, Bundle var6) throws RemoteException;

            @Override
            public void a(k var1, int var2, String var3, String var4, String[] var5, String var6, Bundle var7) throws RemoteException;

            @Override
            public void a(k var1, int var2, String var3, String var4, String[] var5, String var6, IBinder var7, String var8, Bundle var9) throws RemoteException;

            @Override
            public void a(k var1, int var2, String var3, String[] var4, String var5, Bundle var6) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void b(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void b(k var1, int var2, String var3, String var4, String[] var5) throws RemoteException;

            @Override
            public void c(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void c(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void d(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void d(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void e(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void e(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void f(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void f(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void g(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void g(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void h(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void h(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void i(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void i(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void j(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void j(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void k(k var1, int var2, String var3) throws RemoteException;

            @Override
            public void k(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void l(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void m(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void n(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void o(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void p(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void q(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void r(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void s(k var1, int var2, String var3, Bundle var4) throws RemoteException;

            @Override
            public void t(k var1, int var2, String var3, Bundle var4) throws RemoteException;
        }

    }

}

