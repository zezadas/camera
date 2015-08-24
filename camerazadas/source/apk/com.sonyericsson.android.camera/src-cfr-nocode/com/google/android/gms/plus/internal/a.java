/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.nz;
import com.google.android.gms.plus.internal.b;

/*
 * Exception performing whole class analysis ignored.
 */
public abstract class a
extends b.a {
    public a();

    @Override
    public void a(int var1, Bundle var2, Bundle var3) throws RemoteException;

    @Override
    public void a(int var1, Bundle var2, ParcelFileDescriptor var3) throws RemoteException;

    @Override
    public final void a(int var1, Bundle var2, jp var3);

    @Override
    public void a(int var1, nz var2);

    @Override
    public void a(DataHolder var1, String var2);

    @Override
    public void a(DataHolder var1, String var2, String var3);

    @Override
    public void aB(Status var1);

    @Override
    public void ce(String var1) throws RemoteException;

    @Override
    public void cf(String var1);

    @Override
    public void h(int var1, Bundle var2);
}

