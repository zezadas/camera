/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.LaunchOptions;

public interface in
extends IInterface {
    public void a(double var1, double var3, boolean var5) throws RemoteException;

    public void a(String var1, LaunchOptions var2) throws RemoteException;

    public void a(String var1, String var2, long var3) throws RemoteException;

    public void a(String var1, byte[] var2, long var3) throws RemoteException;

    public void a(boolean var1, double var2, boolean var4) throws RemoteException;

    public void aH(String var1) throws RemoteException;

    public void aI(String var1) throws RemoteException;

    public void aJ(String var1) throws RemoteException;

    public void disconnect() throws RemoteException;

    public void f(String var1, boolean var2) throws RemoteException;

    public void fD() throws RemoteException;

    public void fP() throws RemoteException;

    public void l(String var1, String var2) throws RemoteException;

    public static abstract class com.google.android.gms.internal.in$a
    extends Binder
    implements in {
        public static in M(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements in {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(double var1, double var3, boolean var5) throws RemoteException;

            @Override
            public void a(String var1, LaunchOptions var2) throws RemoteException;

            @Override
            public void a(String var1, String var2, long var3) throws RemoteException;

            @Override
            public void a(String var1, byte[] var2, long var3) throws RemoteException;

            @Override
            public void a(boolean var1, double var2, boolean var4) throws RemoteException;

            @Override
            public void aH(String var1) throws RemoteException;

            @Override
            public void aI(String var1) throws RemoteException;

            @Override
            public void aJ(String var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void disconnect() throws RemoteException;

            @Override
            public void f(String var1, boolean var2) throws RemoteException;

            @Override
            public void fD() throws RemoteException;

            @Override
            public void fP() throws RemoteException;

            @Override
            public void l(String var1, String var2) throws RemoteException;
        }

    }

}

