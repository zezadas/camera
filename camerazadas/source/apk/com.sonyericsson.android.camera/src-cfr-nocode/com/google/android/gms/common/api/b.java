/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.f;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/*
 * Exception performing whole class analysis.
 */
final class b
implements GoogleApiClient {
    private final Looper IH;
    final int IU;
    private final Lock IV;
    private final Condition IW;
    private final f IX;
    private final int IY;
    final Queue<c<?>> IZ;
    private final a Iz;
    private ConnectionResult Ja;
    private int Jb;
    private volatile int Jc;
    private volatile int Jd;
    private boolean Je;
    private int Jf;
    private long Jg;
    final Handler Jh;
    private final Bundle Ji;
    private final Map<Api.c<?>, Api.a> Jj;
    private final List<String> Jk;
    private boolean Jl;
    private final Set<com.google.android.gms.common.api.c<?>> Jm;
    final Set<c<?>> Jn;
    private final GoogleApiClient.ConnectionCallbacks Jo;
    private final f.b Jp;

    public b(Context var1, Looper var2, ClientSettings var3, Map<Api<?>, Api.ApiOptions> var4, Set<GoogleApiClient.ConnectionCallbacks> var5, Set<GoogleApiClient.OnConnectionFailedListener> var6, int var7, int var8);

    static /* synthetic */ ConnectionResult a(b var0, ConnectionResult var1);

    private static <C extends Api.a, O> C a(Api.b<C, O> var0, Object var1, Context var2, Looper var3, ClientSettings var4, GoogleApiClient.ConnectionCallbacks var5, GoogleApiClient.OnConnectionFailedListener var6);

    static /* synthetic */ Lock a(b var0);

    private <A extends Api.a> void a(c<A> var1) throws DeadObjectException;

    static /* synthetic */ void a(b var0, int var1);

    private void aj(int var1);

    static /* synthetic */ int b(b var0);

    static /* synthetic */ int b(b var0, int var1);

    static /* synthetic */ int c(b var0, int var1);

    static /* synthetic */ Bundle c(b var0);

    static /* synthetic */ void d(b var0);

    static /* synthetic */ boolean e(b var0);

    static /* synthetic */ long f(b var0);

    static /* synthetic */ boolean g(b var0);

    private void gm();

    private void gn();

    private boolean go();

    private void gp();

    static /* synthetic */ int h(b var0);

    static /* synthetic */ ConnectionResult i(b var0);

    static /* synthetic */ int j(b var0);

    @Override
    public <C extends Api.a> C a(Api.c<C> var1);

    @Override
    public <A extends Api.a, R extends Result, T extends BaseImplementation.a<R, A>> T a(T var1);

    @Override
    public boolean a(Scope var1);

    @Override
    public <A extends Api.a, T extends BaseImplementation.a<? extends Result, A>> T b(T var1);

    @Override
    public ConnectionResult blockingConnect();

    @Override
    public ConnectionResult blockingConnect(long var1, TimeUnit var3);

    @Override
    public <L> com.google.android.gms.common.api.c<L> c(L var1);

    @Override
    public void connect();

    @Override
    public void disconnect();

    @Override
    public Looper getLooper();

    @Override
    public boolean isConnected();

    @Override
    public boolean isConnecting();

    @Override
    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks var1);

    @Override
    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener var1);

    @Override
    public void reconnect();

    @Override
    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks var1);

    @Override
    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener var1);

    @Override
    public void stopAutoManage(FragmentActivity var1);

    @Override
    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks var1);

    @Override
    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener var1);

    static interface a {
        public void b(c<?> var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class b
    extends Handler {
        final /* synthetic */ b Jq;

        b(b var1, Looper var2);

        @Override
        public void handleMessage(Message var1);
    }

    static interface c<A extends Api.a> {
        public void a(a var1);

        public void b(A var1) throws DeadObjectException;

        public void cancel();

        public Api.c<A> ge();

        public int gj();

        public void m(Status var1);
    }

}

