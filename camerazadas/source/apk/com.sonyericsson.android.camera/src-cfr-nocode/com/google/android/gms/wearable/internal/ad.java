/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.internal.ab;
import com.google.android.gms.wearable.internal.ao;
import com.google.android.gms.wearable.internal.as;
import com.google.android.gms.wearable.internal.au;
import com.google.android.gms.wearable.internal.p;
import com.google.android.gms.wearable.internal.r;
import com.google.android.gms.wearable.internal.t;
import com.google.android.gms.wearable.internal.v;
import com.google.android.gms.wearable.internal.x;
import com.google.android.gms.wearable.internal.z;

public interface ad
extends IInterface {
    public void a(Status var1) throws RemoteException;

    public void a(ab var1) throws RemoteException;

    public void a(ao var1) throws RemoteException;

    public void a(as var1) throws RemoteException;

    public void a(au var1) throws RemoteException;

    public void a(p var1) throws RemoteException;

    public void a(r var1) throws RemoteException;

    public void a(t var1) throws RemoteException;

    public void a(v var1) throws RemoteException;

    public void a(x var1) throws RemoteException;

    public void a(z var1) throws RemoteException;

    public void aa(DataHolder var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.wearable.internal.ad$a
    extends Binder
    implements ad {
        public com.google.android.gms.wearable.internal.ad$a();

        public static ad bR(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ad {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(Status var1) throws RemoteException;

            @Override
            public void a(ab var1) throws RemoteException;

            @Override
            public void a(ao var1) throws RemoteException;

            @Override
            public void a(as var1) throws RemoteException;

            @Override
            public void a(au var1) throws RemoteException;

            @Override
            public void a(p var1) throws RemoteException;

            @Override
            public void a(r var1) throws RemoteException;

            @Override
            public void a(t var1) throws RemoteException;

            @Override
            public void a(v var1) throws RemoteException;

            @Override
            public void a(x var1) throws RemoteException;

            @Override
            public void a(z var1) throws RemoteException;

            @Override
            public void aa(DataHolder var1) throws RemoteException;

            @Override
            public IBinder asBinder();
        }

    }

}

