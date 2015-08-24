/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public final class f {
    private final b LM;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> LN;
    final ArrayList<GoogleApiClient.ConnectionCallbacks> LO;
    private boolean LP;
    private final ArrayList<GooglePlayServicesClient.OnConnectionFailedListener> LQ;
    private final Handler mHandler;

    public f(Context var1, Looper var2, b var3);

    static /* synthetic */ ArrayList a(f var0);

    static /* synthetic */ b b(f var0);

    public void aB(int var1);

    public void b(ConnectionResult var1);

    public void d(Bundle var1);

    protected void dL();

    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks var1);

    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener var1);

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks var1);

    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener var1);

    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks var1);

    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class a
    extends Handler {
        final /* synthetic */ f LR;

        public a(f var1, Looper var2);

        @Override
        public void handleMessage(Message var1);
    }

    public static interface b {
        public Bundle fC();

        public boolean gq();

        public boolean isConnected();
    }

}

