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
import com.google.android.gms.internal.bc;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.eh;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.et;
import com.google.android.gms.internal.eu;

public interface bd
extends IInterface {
    public d X() throws RemoteException;

    public ay Y() throws RemoteException;

    public void a(ay var1) throws RemoteException;

    public void a(bc var1) throws RemoteException;

    public void a(bf var1) throws RemoteException;

    public void a(eh var1) throws RemoteException;

    public void a(el var1, String var2) throws RemoteException;

    public void a(et var1) throws RemoteException;

    public void a(eu var1) throws RemoteException;

    public boolean a(av var1) throws RemoteException;

    public void aj() throws RemoteException;

    public void destroy() throws RemoteException;

    public String getMediationAdapterClassName() throws RemoteException;

    public boolean isReady() throws RemoteException;

    public void pause() throws RemoteException;

    public void resume() throws RemoteException;

    public void showInterstitial() throws RemoteException;

    public void stopLoading() throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.bd$a
    extends Binder
    implements bd {
        public com.google.android.gms.internal.bd$a();

        public static bd f(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements bd {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public d X() throws RemoteException;

            @Override
            public ay Y() throws RemoteException;

            @Override
            public void a(ay var1) throws RemoteException;

            @Override
            public void a(bc var1) throws RemoteException;

            @Override
            public void a(bf var1) throws RemoteException;

            @Override
            public void a(eh var1) throws RemoteException;

            @Override
            public void a(el var1, String var2) throws RemoteException;

            @Override
            public void a(et var1) throws RemoteException;

            @Override
            public void a(eu var1) throws RemoteException;

            @Override
            public boolean a(av var1) throws RemoteException;

            @Override
            public void aj() throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void destroy() throws RemoteException;

            @Override
            public String getMediationAdapterClassName() throws RemoteException;

            @Override
            public boolean isReady() throws RemoteException;

            @Override
            public void pause() throws RemoteException;

            @Override
            public void resume() throws RemoteException;

            @Override
            public void showInterstitial() throws RemoteException;

            @Override
            public void stopLoading() throws RemoteException;
        }

    }

}

