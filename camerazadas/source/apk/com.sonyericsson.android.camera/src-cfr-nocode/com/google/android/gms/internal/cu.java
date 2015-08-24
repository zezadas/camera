/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.cv;

public interface cu
extends IInterface {
    public void a(d var1, av var2, String var3, cv var4) throws RemoteException;

    public void a(d var1, av var2, String var3, String var4, cv var5) throws RemoteException;

    public void a(d var1, ay var2, av var3, String var4, cv var5) throws RemoteException;

    public void a(d var1, ay var2, av var3, String var4, String var5, cv var6) throws RemoteException;

    public void destroy() throws RemoteException;

    public d getView() throws RemoteException;

    public void pause() throws RemoteException;

    public void resume() throws RemoteException;

    public void showInterstitial() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.cu$a
    extends Binder
    implements cu {
        public com.google.android.gms.internal.cu$a();

        public static cu m(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements cu {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(d var1, av var2, String var3, cv var4) throws RemoteException;

            @Override
            public void a(d var1, av var2, String var3, String var4, cv var5) throws RemoteException;

            @Override
            public void a(d var1, ay var2, av var3, String var4, cv var5) throws RemoteException;

            @Override
            public void a(d var1, ay var2, av var3, String var4, String var5, cv var6) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void destroy() throws RemoteException;

            @Override
            public d getView() throws RemoteException;

            @Override
            public void pause() throws RemoteException;

            @Override
            public void resume() throws RemoteException;

            @Override
            public void showInterstitial() throws RemoteException;
        }

    }

}

