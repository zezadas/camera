/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.nb;

public class nd
extends e<nb> {
    public nd(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, (String[])null);
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        Bundle bundle = new Bundle();
        l.a((k)e, 6171000, this.getContext().getPackageName(), bundle);
    }

    public nb bB(IBinder iBinder) {
        return nb.a.bA(iBinder);
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.panorama.internal.IPanoramaService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.panorama.service.START";
    }

    @Override
    public /* synthetic */ IInterface j(IBinder iBinder) {
        return this.bB(iBinder);
    }
}

