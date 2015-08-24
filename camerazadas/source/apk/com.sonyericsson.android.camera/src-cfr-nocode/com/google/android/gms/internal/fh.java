/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fm;

/*
 * Exception performing whole class analysis.
 */
@ez
public class fh
extends e<fm> {
    final int pP;

    public fh(Context var1, GooglePlayServicesClient.ConnectionCallbacks var2, GooglePlayServicesClient.OnConnectionFailedListener var3, int var4);

    protected fm C(IBinder var1);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public fm cE();

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);
}

