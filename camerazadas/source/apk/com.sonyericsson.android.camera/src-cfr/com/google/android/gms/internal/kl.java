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
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kp;

public class kl
extends e<kp>
implements kk {
    private final String Dd;

    public kl(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String string, String[] arrstring) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, arrstring);
        this.Dd = string;
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        l.a((k)e, 6171000, this.getContext().getPackageName(), this.Dd, this.gR(), new Bundle());
    }

    protected kp ao(IBinder iBinder) {
        return kp.a.as(iBinder);
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.fitness.internal.IGoogleFitnessService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.fitness.GoogleFitnessService.START";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.ao(iBinder);
    }

    @Override
    public kp jb() {
        return (kp)this.gS();
    }
}

