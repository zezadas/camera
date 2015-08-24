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
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;

public final class GoogleAuthApiClientImpl
extends e<IGoogleAuthService> {
    public static final String ACTION_START_SERVICE = "com.google.android.gms.auth.service.START";
    public static final String SERVICE_DESCRIPTOR = "com.google.android.gms.auth.api.IGoogleAuthService";
    private final String Dd;
    private String[] Ds;

    public GoogleAuthApiClientImpl(Context context, Looper looper, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String string, String[] arrstring) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, arrstring);
        this.Dd = string;
        this.Ds = arrstring;
    }

    public GoogleAuthApiClientImpl(Context context, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String string, String[] arrstring) {
        this(context, context.getMainLooper(), clientSettings, connectionCallbacks, onConnectionFailedListener, string, arrstring);
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        l.b(e, 6171000, this.getContext().getPackageName(), this.Dd, this.gR());
    }

    protected IGoogleAuthService createServiceInterface(IBinder iBinder) {
        return IGoogleAuthService.Stub.asInterface(iBinder);
    }

    public String getAccountName() {
        return this.Dd;
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.IGoogleAuthService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.createServiceInterface(iBinder);
    }
}

