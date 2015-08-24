/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.no;

public class nl
implements GooglePlayServicesClient.ConnectionCallbacks,
GooglePlayServicesClient.OnConnectionFailedListener {
    private no akF;
    private final ng.a akP;
    private boolean akQ;

    public nl(ng.a a) {
        this.akP = a;
        this.akF = null;
        this.akQ = true;
    }

    public void R(boolean bl) {
        this.akQ = bl;
    }

    public void a(no no) {
        this.akF = no;
    }

    @Override
    public void onConnected(Bundle bundle) {
        this.akF.S(false);
        if (this.akQ && this.akP != null) {
            this.akP.mU();
        }
        this.akQ = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.akF.S(true);
        if (this.akQ && this.akP != null) {
            if (connectionResult.hasResolution()) {
                this.akP.b(connectionResult.getResolution());
            } else {
                this.akP.mV();
            }
        }
        this.akQ = false;
    }

    @Override
    public void onDisconnected() {
        this.akF.S(true);
    }
}

