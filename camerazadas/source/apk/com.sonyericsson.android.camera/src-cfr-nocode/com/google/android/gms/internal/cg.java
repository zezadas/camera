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
import com.google.android.gms.internal.ch;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 */
@ez
public class cg
extends e<ch> {
    final int pP;

    public cg(Context var1, GooglePlayServicesClient.ConnectionCallbacks var2, GooglePlayServicesClient.OnConnectionFailedListener var3, int var4);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public ch bC();

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    protected ch i(IBinder var1);

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);
}

