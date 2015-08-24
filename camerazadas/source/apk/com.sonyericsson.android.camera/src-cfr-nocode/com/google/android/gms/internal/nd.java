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
import com.google.android.gms.internal.nb;

public class nd
extends e<nb> {
    public nd(Context var1, Looper var2, GoogleApiClient.ConnectionCallbacks var3, GoogleApiClient.OnConnectionFailedListener var4);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public nb bB(IBinder var1);

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    public /* synthetic */ IInterface j(IBinder var1);
}

