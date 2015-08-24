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
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.o;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
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

    public static final class Builder {
        private String Dd;
        private Looper IH;
        private final Set<String> IJ = new HashSet<String>();
        private int IK;
        private View IL;
        private String IM;
        private final Map<Api<?>, Api.ApiOptions> IN = new HashMap();
        private FragmentActivity IO;
        private int IP = -1;
        private OnConnectionFailedListener IQ;
        private int IR = 2;
        private final Set<ConnectionCallbacks> IS = new HashSet<ConnectionCallbacks>();
        private final Set<OnConnectionFailedListener> IT = new HashSet<OnConnectionFailedListener>();
        private final Context mContext;

        public Builder(Context context) {
            this.mContext = context;
            this.IH = context.getMainLooper();
            this.IM = context.getPackageName();
        }

        public Builder(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            o.b(connectionCallbacks, (Object)"Must provide a connected listener");
            this.IS.add(connectionCallbacks);
            o.b(onConnectionFailedListener, (Object)"Must provide a connection failed listener");
            this.IT.add(onConnectionFailedListener);
        }

        private GoogleApiClient gl() {
            GoogleApiClient googleApiClient;
            d d = d.a(this.IO);
            GoogleApiClient googleApiClient2 = googleApiClient = d.ak(this.IP);
            if (googleApiClient == null) {
                googleApiClient2 = new b(this.mContext.getApplicationContext(), this.IH, this.gk(), this.IN, this.IS, this.IT, this.IP, this.IR);
            }
            d.a(this.IP, googleApiClient2, this.IQ);
            return googleApiClient2;
        }

        public Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> object) {
            this.IN.put(object, null);
            object = object.gd();
            int n = object.size();
            for (int i = 0; i < n; ++i) {
                this.IJ.add(((Scope)object.get(i)).gs());
            }
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApi(Api<O> object, O o) {
            o.b(o, (Object)"Null options are not permitted for this Api");
            this.IN.put(object, (Api.ApiOptions)o);
            object = object.gd();
            int n = object.size();
            for (int i = 0; i < n; ++i) {
                this.IJ.add(((Scope)object.get(i)).gs());
            }
            return this;
        }

        public Builder addConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
            this.IS.add(connectionCallbacks);
            return this;
        }

        public Builder addOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
            this.IT.add(onConnectionFailedListener);
            return this;
        }

        public Builder addScope(Scope scope) {
            this.IJ.add(scope.gs());
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public GoogleApiClient build() {
            boolean bl = !this.IN.isEmpty();
            o.b(bl, (Object)"must call addApi() to add at least one API");
            if (this.IP >= 0) {
                return this.gl();
            }
            return new b(this.mContext, this.IH, this.gk(), this.IN, this.IS, this.IT, -1, this.IR);
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder enableAutoManage(FragmentActivity fragmentActivity, int n, OnConnectionFailedListener onConnectionFailedListener) {
            boolean bl = n >= 0;
            o.b(bl, (Object)"clientId must be non-negative");
            this.IP = n;
            this.IO = o.b(fragmentActivity, (Object)"Null activity is not permitted.");
            this.IQ = onConnectionFailedListener;
            return this;
        }

        public ClientSettings gk() {
            return new ClientSettings(this.Dd, this.IJ, this.IK, this.IL, this.IM);
        }

        public Builder setAccountName(String string) {
            this.Dd = string;
            return this;
        }

        public Builder setGravityForPopups(int n) {
            this.IK = n;
            return this;
        }

        public Builder setHandler(Handler handler) {
            o.b(handler, (Object)"Handler must not be null");
            this.IH = handler.getLooper();
            return this;
        }

        public Builder setViewForPopups(View view) {
            this.IL = view;
            return this;
        }

        public Builder useDefaultAccount() {
            return this.setAccountName("<<default account>>");
        }
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

