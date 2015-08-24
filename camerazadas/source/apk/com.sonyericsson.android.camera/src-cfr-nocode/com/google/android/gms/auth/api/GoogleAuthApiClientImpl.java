/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.auth.api.IGoogleAuthService;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;

/*
 * Exception performing whole class analysis.
 */
public final class GoogleAuthApiClientImpl
extends e<IGoogleAuthService> {
    public static final String ACTION_START_SERVICE = "com.google.android.gms.auth.service.START";
    public static final String SERVICE_DESCRIPTOR = "com.google.android.gms.auth.api.IGoogleAuthService";
    private final String Dd;
    private String[] Ds;

    public GoogleAuthApiClientImpl(Context var1, Looper var2, ClientSettings var3, GoogleApiClient.ConnectionCallbacks var4, GoogleApiClient.OnConnectionFailedListener var5, String var6, String[] var7);

    public GoogleAuthApiClientImpl(Context var1, ClientSettings var2, GoogleApiClient.ConnectionCallbacks var3, GoogleApiClient.OnConnectionFailedListener var4, String var5, String[] var6);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    protected IGoogleAuthService createServiceInterface(IBinder var1);

    public String getAccountName();

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);
}

