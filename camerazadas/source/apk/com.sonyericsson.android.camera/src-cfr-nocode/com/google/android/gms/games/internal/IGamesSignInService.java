/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.games.internal.IGamesSignInCallbacks;

public interface IGamesSignInService
extends IInterface {
    public void a(IGamesSignInCallbacks var1, String var2, String var3) throws RemoteException;

    public void a(IGamesSignInCallbacks var1, String var2, String var3, String var4) throws RemoteException;

    public void a(IGamesSignInCallbacks var1, String var2, String var3, String var4, String[] var5) throws RemoteException;

    public void a(IGamesSignInCallbacks var1, String var2, String var3, String[] var4) throws RemoteException;

    public void a(IGamesSignInCallbacks var1, String var2, String var3, String[] var4, String var5) throws RemoteException;

    public void b(IGamesSignInCallbacks var1, String var2, String var3, String var4) throws RemoteException;

    public String bL(String var1) throws RemoteException;

    public String bM(String var1) throws RemoteException;

    public String h(String var1, boolean var2) throws RemoteException;

    public void w(String var1, String var2) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Stub
    extends Binder
    implements IGamesSignInService {
        public Stub();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        private static class Proxy
        implements IGamesSignInService {
            private IBinder lb;

            @Override
            public void a(IGamesSignInCallbacks var1, String var2, String var3) throws RemoteException;

            @Override
            public void a(IGamesSignInCallbacks var1, String var2, String var3, String var4) throws RemoteException;

            @Override
            public void a(IGamesSignInCallbacks var1, String var2, String var3, String var4, String[] var5) throws RemoteException;

            @Override
            public void a(IGamesSignInCallbacks var1, String var2, String var3, String[] var4) throws RemoteException;

            @Override
            public void a(IGamesSignInCallbacks var1, String var2, String var3, String[] var4, String var5) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(IGamesSignInCallbacks var1, String var2, String var3, String var4) throws RemoteException;

            @Override
            public String bL(String var1) throws RemoteException;

            @Override
            public String bM(String var1) throws RemoteException;

            @Override
            public String h(String var1, boolean var2) throws RemoteException;

            @Override
            public void w(String var1, String var2) throws RemoteException;
        }

    }

}

