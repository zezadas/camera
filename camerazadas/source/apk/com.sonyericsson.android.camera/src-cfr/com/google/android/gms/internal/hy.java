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
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.hv;

public class hy
extends e<hv> {
    public hy(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, new String[0]);
    }

    protected hv H(IBinder iBinder) {
        return hv.a.F(iBinder);
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        l.b(e, 6171000, this.getContext().getPackageName());
    }

    public hv fn() {
        return (hv)this.gS();
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.icing.LIGHTWEIGHT_INDEX_SERVICE";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.H(iBinder);
    }
}

