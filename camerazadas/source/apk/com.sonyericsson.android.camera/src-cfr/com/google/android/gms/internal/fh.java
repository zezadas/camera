/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fm;

@ez
public class fh
extends e<fm> {
    final int pP;

    public fh(Context context, GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener, int n) {
        super(context, connectionCallbacks, onConnectionFailedListener, new String[0]);
        this.pP = n;
    }

    protected fm C(IBinder iBinder) {
        return fm.a.D(iBinder);
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        Bundle bundle = new Bundle();
        l.g(e, this.pP, this.getContext().getPackageName(), bundle);
    }

    public fm cE() {
        return (fm)super.gS();
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.ads.service.START";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.C(iBinder);
    }
}

