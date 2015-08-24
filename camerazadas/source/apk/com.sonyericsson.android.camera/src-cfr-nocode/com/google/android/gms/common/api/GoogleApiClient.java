/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.internal.ClientSettings;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public interface GoogleApiClient {
    public <C extends Api.a> C a(Api.c<C> var1);

    public <A extends Api.a, R extends Result, T extends BaseImplementation.a<R, A>> T a(T var1);

    public boolean a(Scope var1);

    public <A extends Api.a, T extends BaseImplementation.a<? extends Result, A>> T b(T var1);

    public ConnectionResult blockingConnect();

    public ConnectionResult blockingConnect(long var1, TimeUnit var3);

    public <L> c<L> c(L var1);

    public void connect();

    public void disconnect();

    public Looper getLooper();

    public boolean isConnected();

    public boolean isConnecting();

    public boolean isConnectionCallbacksRegistered(ConnectionCallbacks var1);

    public boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener var1);

    public void reconnect();

    public void registerConnectionCallbacks(ConnectionCallbacks var1);

    public void registerConnectionFailedListener(OnConnectionFailedListener var1);

    public void stopAutoManage(FragmentActivity var1);

    public void unregisterConnectionCallbacks(ConnectionCallbacks var1);

    public void unregisterConnectionFailedListener(OnConnectionFailedListener var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private String Dd;
        private Looper IH;
        private final Set<String> IJ;
        private int IK;
        private View IL;
        private String IM;
        private final Map<Api<?>, Api.ApiOptions> IN;
        private FragmentActivity IO;
        private int IP;
        private OnConnectionFailedListener IQ;
        private int IR;
        private final Set<ConnectionCallbacks> IS;
        private final Set<OnConnectionFailedListener> IT;
        private final Context mContext;

        public Builder(Context var1);

        public Builder(Context var1, ConnectionCallbacks var2, OnConnectionFailedListener var3);

        private GoogleApiClient gl();

        public Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> var1);

        public <O extends Api.ApiOptions.HasOptions> Builder addApi(Api<O> var1, O var2);

        public Builder addConnectionCallbacks(ConnectionCallbacks var1);

        public Builder addOnConnectionFailedListener(OnConnectionFailedListener var1);

        public Builder addScope(Scope var1);

        public GoogleApiClient build();

        public Builder enableAutoManage(FragmentActivity var1, int var2, OnConnectionFailedListener var3);

        public ClientSettings gk();

        public Builder setAccountName(String var1);

        public Builder setGravityForPopups(int var1);

        public Builder setHandler(Handler var1);

        public Builder setViewForPopups(View var1);

        public Builder useDefaultAccount();
    }

    public static interface ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        public void onConnected(Bundle var1);

        public void onConnectionSuspended(int var1);
    }

    public static interface OnConnectionFailedListener
    extends GooglePlayServicesClient.OnConnectionFailedListener {
        @Override
        public void onConnectionFailed(ConnectionResult var1);
    }

}

