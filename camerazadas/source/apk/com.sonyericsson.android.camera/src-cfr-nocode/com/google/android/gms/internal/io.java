/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.internal.ig;
import com.google.android.gms.internal.il;

public interface io
extends IInterface {
    public void a(ApplicationMetadata var1, String var2, String var3, boolean var4) throws RemoteException;

    public void a(String var1, double var2, boolean var4) throws RemoteException;

    public void a(String var1, long var2) throws RemoteException;

    public void a(String var1, long var2, int var4) throws RemoteException;

    public void ac(int var1) throws RemoteException;

    public void ad(int var1) throws RemoteException;

    public void ae(int var1) throws RemoteException;

    public void af(int var1) throws RemoteException;

    public void b(ig var1) throws RemoteException;

    public void b(il var1) throws RemoteException;

    public void b(String var1, byte[] var2) throws RemoteException;

    public void k(String var1, String var2) throws RemoteException;

    public void onApplicationDisconnected(int var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class a
    extends Binder
    implements io {
        public a();

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;
    }

}

