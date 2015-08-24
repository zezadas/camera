/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.realtime.internal.BeginCompoundOperationRequest;
import com.google.android.gms.drive.realtime.internal.EndCompoundOperationRequest;
import com.google.android.gms.drive.realtime.internal.ParcelableIndexReference;
import com.google.android.gms.drive.realtime.internal.c;
import com.google.android.gms.drive.realtime.internal.d;
import com.google.android.gms.drive.realtime.internal.e;
import com.google.android.gms.drive.realtime.internal.f;
import com.google.android.gms.drive.realtime.internal.g;
import com.google.android.gms.drive.realtime.internal.h;
import com.google.android.gms.drive.realtime.internal.i;
import com.google.android.gms.drive.realtime.internal.j;
import com.google.android.gms.drive.realtime.internal.k;
import com.google.android.gms.drive.realtime.internal.l;
import com.google.android.gms.drive.realtime.internal.n;
import com.google.android.gms.drive.realtime.internal.o;

public interface m
extends IInterface {
    public void a(int var1, j var2) throws RemoteException;

    public void a(BeginCompoundOperationRequest var1, o var2) throws RemoteException;

    public void a(EndCompoundOperationRequest var1, j var2) throws RemoteException;

    public void a(EndCompoundOperationRequest var1, o var2) throws RemoteException;

    public void a(ParcelableIndexReference var1, n var2) throws RemoteException;

    public void a(c var1) throws RemoteException;

    public void a(d var1) throws RemoteException;

    public void a(e var1) throws RemoteException;

    public void a(h var1) throws RemoteException;

    public void a(i var1) throws RemoteException;

    public void a(j var1) throws RemoteException;

    public void a(l var1) throws RemoteException;

    public void a(o var1) throws RemoteException;

    public void a(String var1, int var2, int var3, g var4) throws RemoteException;

    public void a(String var1, int var2, int var3, j var4) throws RemoteException;

    public void a(String var1, int var2, DataHolder var3, g var4) throws RemoteException;

    public void a(String var1, int var2, DataHolder var3, j var4) throws RemoteException;

    public void a(String var1, int var2, o var3) throws RemoteException;

    public void a(String var1, int var2, String var3, int var4, j var5) throws RemoteException;

    public void a(String var1, int var2, String var3, j var4) throws RemoteException;

    public void a(String var1, DataHolder var2, j var3) throws RemoteException;

    public void a(String var1, f var2) throws RemoteException;

    public void a(String var1, j var2) throws RemoteException;

    public void a(String var1, k var2) throws RemoteException;

    public void a(String var1, l var2) throws RemoteException;

    public void a(String var1, n var2) throws RemoteException;

    public void a(String var1, o var2) throws RemoteException;

    public void a(String var1, String var2, f var3) throws RemoteException;

    public void a(String var1, String var2, g var3) throws RemoteException;

    public void a(String var1, String var2, j var3) throws RemoteException;

    public void b(c var1) throws RemoteException;

    public void b(j var1) throws RemoteException;

    public void b(l var1) throws RemoteException;

    public void b(o var1) throws RemoteException;

    public void b(String var1, f var2) throws RemoteException;

    public void b(String var1, l var2) throws RemoteException;

    public void b(String var1, n var2) throws RemoteException;

    public void b(String var1, o var2) throws RemoteException;

    public void c(c var1) throws RemoteException;

    public void c(String var1, l var2) throws RemoteException;

    public void d(c var1) throws RemoteException;

    public static abstract class com.google.android.gms.drive.realtime.internal.m$a
    extends Binder
    implements m {
        public static m ai(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements m {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(int var1, j var2) throws RemoteException;

            @Override
            public void a(BeginCompoundOperationRequest var1, o var2) throws RemoteException;

            @Override
            public void a(EndCompoundOperationRequest var1, j var2) throws RemoteException;

            @Override
            public void a(EndCompoundOperationRequest var1, o var2) throws RemoteException;

            @Override
            public void a(ParcelableIndexReference var1, n var2) throws RemoteException;

            @Override
            public void a(c var1) throws RemoteException;

            @Override
            public void a(d var1) throws RemoteException;

            @Override
            public void a(e var1) throws RemoteException;

            @Override
            public void a(h var1) throws RemoteException;

            @Override
            public void a(i var1) throws RemoteException;

            @Override
            public void a(j var1) throws RemoteException;

            @Override
            public void a(l var1) throws RemoteException;

            @Override
            public void a(o var1) throws RemoteException;

            @Override
            public void a(String var1, int var2, int var3, g var4) throws RemoteException;

            @Override
            public void a(String var1, int var2, int var3, j var4) throws RemoteException;

            @Override
            public void a(String var1, int var2, DataHolder var3, g var4) throws RemoteException;

            @Override
            public void a(String var1, int var2, DataHolder var3, j var4) throws RemoteException;

            @Override
            public void a(String var1, int var2, o var3) throws RemoteException;

            @Override
            public void a(String var1, int var2, String var3, int var4, j var5) throws RemoteException;

            @Override
            public void a(String var1, int var2, String var3, j var4) throws RemoteException;

            @Override
            public void a(String var1, DataHolder var2, j var3) throws RemoteException;

            @Override
            public void a(String var1, f var2) throws RemoteException;

            @Override
            public void a(String var1, j var2) throws RemoteException;

            @Override
            public void a(String var1, k var2) throws RemoteException;

            @Override
            public void a(String var1, l var2) throws RemoteException;

            @Override
            public void a(String var1, n var2) throws RemoteException;

            @Override
            public void a(String var1, o var2) throws RemoteException;

            @Override
            public void a(String var1, String var2, f var3) throws RemoteException;

            @Override
            public void a(String var1, String var2, g var3) throws RemoteException;

            @Override
            public void a(String var1, String var2, j var3) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(c var1) throws RemoteException;

            @Override
            public void b(j var1) throws RemoteException;

            @Override
            public void b(l var1) throws RemoteException;

            @Override
            public void b(o var1) throws RemoteException;

            @Override
            public void b(String var1, f var2) throws RemoteException;

            @Override
            public void b(String var1, l var2) throws RemoteException;

            @Override
            public void b(String var1, n var2) throws RemoteException;

            @Override
            public void b(String var1, o var2) throws RemoteException;

            @Override
            public void c(c var1) throws RemoteException;

            @Override
            public void c(String var1, l var2) throws RemoteException;

            @Override
            public void d(c var1) throws RemoteException;
        }

    }

}

