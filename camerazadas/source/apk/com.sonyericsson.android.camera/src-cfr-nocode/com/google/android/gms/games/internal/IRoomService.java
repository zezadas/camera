/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.IRoomServiceCallbacks;

public interface IRoomService
extends IInterface {
    public void Q(boolean var1) throws RemoteException;

    public void a(IBinder var1, IRoomServiceCallbacks var2) throws RemoteException;

    public void a(DataHolder var1, boolean var2) throws RemoteException;

    public void a(byte[] var1, String var2, int var3) throws RemoteException;

    public void a(byte[] var1, String[] var2) throws RemoteException;

    public void bN(String var1) throws RemoteException;

    public void bO(String var1) throws RemoteException;

    public void c(String var1, String var2, String var3) throws RemoteException;

    public void kG() throws RemoteException;

    public void kH() throws RemoteException;

    public void kI() throws RemoteException;

    public void kJ() throws RemoteException;

    public void t(String var1, int var2) throws RemoteException;

    public void u(String var1, int var2) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Stub
    extends Binder
    implements IRoomService {
        public Stub();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        private static class Proxy
        implements IRoomService {
            private IBinder lb;

            @Override
            public void Q(boolean var1) throws RemoteException;

            @Override
            public void a(IBinder var1, IRoomServiceCallbacks var2) throws RemoteException;

            @Override
            public void a(DataHolder var1, boolean var2) throws RemoteException;

            @Override
            public void a(byte[] var1, String var2, int var3) throws RemoteException;

            @Override
            public void a(byte[] var1, String[] var2) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void bN(String var1) throws RemoteException;

            @Override
            public void bO(String var1) throws RemoteException;

            @Override
            public void c(String var1, String var2, String var3) throws RemoteException;

            @Override
            public void kG() throws RemoteException;

            @Override
            public void kH() throws RemoteException;

            @Override
            public void kI() throws RemoteException;

            @Override
            public void kJ() throws RemoteException;

            @Override
            public void t(String var1, int var2) throws RemoteException;

            @Override
            public void u(String var1, int var2) throws RemoteException;
        }

    }

}

