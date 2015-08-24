/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.games.internal.ConnectionInfo;

public interface IRoomServiceCallbacks
extends IInterface {
    public void a(ParcelFileDescriptor var1, int var2) throws RemoteException;

    public void a(ConnectionInfo var1) throws RemoteException;

    public void a(String var1, byte[] var2, int var3) throws RemoteException;

    public void a(String var1, String[] var2) throws RemoteException;

    public void aD(IBinder var1) throws RemoteException;

    public void b(String var1, String[] var2) throws RemoteException;

    public void bP(String var1) throws RemoteException;

    public void bQ(String var1) throws RemoteException;

    public void bR(String var1) throws RemoteException;

    public void bS(String var1) throws RemoteException;

    public void bT(String var1) throws RemoteException;

    public void bU(String var1) throws RemoteException;

    public void c(int var1, int var2, String var3) throws RemoteException;

    public void c(String var1, byte[] var2) throws RemoteException;

    public void c(String var1, String[] var2) throws RemoteException;

    public void d(String var1, String[] var2) throws RemoteException;

    public void dF(int var1) throws RemoteException;

    public void e(String var1, String[] var2) throws RemoteException;

    public void f(String var1, String[] var2) throws RemoteException;

    public void g(String var1, String[] var2) throws RemoteException;

    public void i(String var1, boolean var2) throws RemoteException;

    public void kK() throws RemoteException;

    public void kL() throws RemoteException;

    public void onP2PConnected(String var1) throws RemoteException;

    public void onP2PDisconnected(String var1) throws RemoteException;

    public void v(String var1, int var2) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Stub
    extends Binder
    implements IRoomServiceCallbacks {
        public Stub();

        public static IRoomServiceCallbacks aE(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class Proxy
        implements IRoomServiceCallbacks {
            private IBinder lb;

            Proxy(IBinder var1);

            @Override
            public void a(ParcelFileDescriptor var1, int var2) throws RemoteException;

            @Override
            public void a(ConnectionInfo var1) throws RemoteException;

            @Override
            public void a(String var1, byte[] var2, int var3) throws RemoteException;

            @Override
            public void a(String var1, String[] var2) throws RemoteException;

            @Override
            public void aD(IBinder var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(String var1, String[] var2) throws RemoteException;

            @Override
            public void bP(String var1) throws RemoteException;

            @Override
            public void bQ(String var1) throws RemoteException;

            @Override
            public void bR(String var1) throws RemoteException;

            @Override
            public void bS(String var1) throws RemoteException;

            @Override
            public void bT(String var1) throws RemoteException;

            @Override
            public void bU(String var1) throws RemoteException;

            @Override
            public void c(int var1, int var2, String var3) throws RemoteException;

            @Override
            public void c(String var1, byte[] var2) throws RemoteException;

            @Override
            public void c(String var1, String[] var2) throws RemoteException;

            @Override
            public void d(String var1, String[] var2) throws RemoteException;

            @Override
            public void dF(int var1) throws RemoteException;

            @Override
            public void e(String var1, String[] var2) throws RemoteException;

            @Override
            public void f(String var1, String[] var2) throws RemoteException;

            @Override
            public void g(String var1, String[] var2) throws RemoteException;

            @Override
            public void i(String var1, boolean var2) throws RemoteException;

            @Override
            public void kK() throws RemoteException;

            @Override
            public void kL() throws RemoteException;

            @Override
            public void onP2PConnected(String var1) throws RemoteException;

            @Override
            public void onP2PDisconnected(String var1) throws RemoteException;

            @Override
            public void v(String var1, int var2) throws RemoteException;
        }

    }

}

