/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.service.FitnessSensorServiceRequest;
import com.google.android.gms.internal.kn;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.lg;
import com.google.android.gms.internal.li;

public interface lk
extends IInterface {
    public void a(FitnessSensorServiceRequest var1, kt var2) throws RemoteException;

    public void a(lg var1, kn var2) throws RemoteException;

    public void a(li var1, kt var2) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class a
    extends Binder
    implements lk {
        public a();

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;
    }

}

