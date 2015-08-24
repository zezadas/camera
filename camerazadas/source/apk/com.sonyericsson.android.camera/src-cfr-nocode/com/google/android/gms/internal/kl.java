/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kp;

/*
 * Exception performing whole class analysis.
 */
public class kl
extends e<kp>
implements kk {
    private final String Dd;

    public kl(Context var1, Looper var2, GoogleApiClient.ConnectionCallbacks var3, GoogleApiClient.OnConnectionFailedListener var4, String var5, String[] var6);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    protected kp ao(IBinder var1);

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

    @Override
    public kp jb();
}

