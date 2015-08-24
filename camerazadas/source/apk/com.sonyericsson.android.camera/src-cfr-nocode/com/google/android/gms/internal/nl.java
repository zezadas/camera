/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.no;

/*
 * Exception performing whole class analysis.
 */
public class nl
implements GooglePlayServicesClient.ConnectionCallbacks,
GooglePlayServicesClient.OnConnectionFailedListener {
    private no akF;
    private final ng.a akP;
    private boolean akQ;

    public nl(ng.a var1);

    public void R(boolean var1);

    public void a(no var1);

    @Override
    public void onConnected(Bundle var1);

    @Override
    public void onConnectionFailed(ConnectionResult var1);

    @Override
    public void onDisconnected();
}

