/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.request.DataSourcesRequest;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.request.aa;
import com.google.android.gms.fitness.request.ad;
import com.google.android.gms.fitness.request.af;
import com.google.android.gms.fitness.request.ah;
import com.google.android.gms.fitness.request.aj;
import com.google.android.gms.fitness.request.b;
import com.google.android.gms.fitness.request.e;
import com.google.android.gms.fitness.request.j;
import com.google.android.gms.fitness.request.m;
import com.google.android.gms.fitness.request.o;
import com.google.android.gms.fitness.request.q;
import com.google.android.gms.fitness.request.u;
import com.google.android.gms.fitness.request.w;
import com.google.android.gms.fitness.request.y;
import com.google.android.gms.internal.km;
import com.google.android.gms.internal.kn;
import com.google.android.gms.internal.ko;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kr;
import com.google.android.gms.internal.ks;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.lf;

public interface kp
extends IInterface {
    public void a(DataDeleteRequest var1, kt var2, String var3) throws RemoteException;

    public void a(DataReadRequest var1, km var2, String var3) throws RemoteException;

    public void a(DataSourcesRequest var1, kn var2, String var3) throws RemoteException;

    public void a(DataTypeCreateRequest var1, ko var2, String var3) throws RemoteException;

    public void a(SessionInsertRequest var1, kt var2, String var3) throws RemoteException;

    public void a(SessionReadRequest var1, kr var2, String var3) throws RemoteException;

    public void a(StartBleScanRequest var1, kt var2, String var3) throws RemoteException;

    public void a(aa var1, kt var2, String var3) throws RemoteException;

    public void a(ad var1, kt var2, String var3) throws RemoteException;

    public void a(af var1, kt var2, String var3) throws RemoteException;

    public void a(ah var1, kt var2, String var3) throws RemoteException;

    public void a(aj var1, kt var2, String var3) throws RemoteException;

    public void a(b var1, kt var2, String var3) throws RemoteException;

    public void a(e var1, kt var2, String var3) throws RemoteException;

    public void a(j var1, ko var2, String var3) throws RemoteException;

    public void a(m var1, kq var2, String var3) throws RemoteException;

    public void a(o var1, kt var2, String var3) throws RemoteException;

    public void a(q var1, kt var2, String var3) throws RemoteException;

    public void a(u var1, kt var2, String var3) throws RemoteException;

    public void a(w var1, kt var2, String var3) throws RemoteException;

    public void a(y var1, ks var2, String var3) throws RemoteException;

    public void a(kt var1, String var2) throws RemoteException;

    public void a(lf var1, String var2) throws RemoteException;

    public void b(kt var1, String var2) throws RemoteException;

    public static abstract class com.google.android.gms.internal.kp$a
    extends Binder
    implements kp {
        public static kp as(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements kp {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(DataDeleteRequest var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(DataReadRequest var1, km var2, String var3) throws RemoteException;

            @Override
            public void a(DataSourcesRequest var1, kn var2, String var3) throws RemoteException;

            @Override
            public void a(DataTypeCreateRequest var1, ko var2, String var3) throws RemoteException;

            @Override
            public void a(SessionInsertRequest var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(SessionReadRequest var1, kr var2, String var3) throws RemoteException;

            @Override
            public void a(StartBleScanRequest var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(aa var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(ad var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(af var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(ah var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(aj var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(b var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(e var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(j var1, ko var2, String var3) throws RemoteException;

            @Override
            public void a(m var1, kq var2, String var3) throws RemoteException;

            @Override
            public void a(o var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(q var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(u var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(w var1, kt var2, String var3) throws RemoteException;

            @Override
            public void a(y var1, ks var2, String var3) throws RemoteException;

            @Override
            public void a(kt var1, String var2) throws RemoteException;

            @Override
            public void a(lf var1, String var2) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(kt var1, String var2) throws RemoteException;
        }

    }

}

