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

public interface br
extends IInterface {
    public void as() throws RemoteException;

    public String bt() throws RemoteException;

    public d bu() throws RemoteException;

    public d bv() throws RemoteException;

    public String bw() throws RemoteException;

    public double bx() throws RemoteException;

    public String by() throws RemoteException;

    public String bz() throws RemoteException;

    public String getBody() throws RemoteException;

    public void i(int var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class a
    extends Binder
    implements br {
        public a();

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;
    }

}

