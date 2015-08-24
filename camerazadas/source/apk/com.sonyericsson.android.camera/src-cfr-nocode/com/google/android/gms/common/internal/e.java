/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class e<T extends IInterface>
implements Api.a,
f.b {
    public static final String[] LE;
    private final String[] Ds;
    private final Looper IH;
    private final com.google.android.gms.common.internal.f IX;
    private final ArrayList<e<T>> LA;
    private e<T> LB;
    private volatile int LC;
    boolean LD;
    private T Lz;
    private final Context mContext;
    final Handler mHandler;

    static;

    protected /* varargs */ e(Context var1, Looper var2, GoogleApiClient.ConnectionCallbacks var3, GoogleApiClient.OnConnectionFailedListener var4, String ... var5);

    @Deprecated
    protected /* varargs */ e(Context var1, GooglePlayServicesClient.ConnectionCallbacks var2, GooglePlayServicesClient.OnConnectionFailedListener var3, String ... var4);

    static /* synthetic */ IInterface a(e var0, IInterface var1);

    static /* synthetic */ f a(e var0, f var1);

    static /* synthetic */ com.google.android.gms.common.internal.f a(e var0);

    static /* synthetic */ void a(e var0, int var1);

    private void az(int var1);

    static /* synthetic */ ArrayList b(e var0);

    static /* synthetic */ IInterface c(e var0);

    static /* synthetic */ f d(e var0);

    static /* synthetic */ Context e(e var0);

    protected final void N(IBinder var1);

    protected void a(int var1, IBinder var2, Bundle var3);

    @Deprecated
    public final void a(e<T> var1);

    protected abstract void a(l var1, e var2) throws RemoteException;

    public void aA(int var1);

    protected /* varargs */ void c(String ... var1);

    @Override
    public void connect();

    protected final void dJ();

    @Override
    public void disconnect();

    @Override
    public Bundle fC();

    public final String[] gR();

    public final T gS();

    public final Context getContext();

    @Override
    public final Looper getLooper();

    protected abstract String getServiceDescriptor();

    protected abstract String getStartServiceAction();

    @Override
    public boolean gq();

    @Override
    public boolean isConnected();

    public boolean isConnecting();

    @Deprecated
    public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Deprecated
    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener var1);

    protected abstract T j(IBinder var1);

    protected void onConnected();

    protected void onDisconnected();

    @Deprecated
    public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks var1);

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks var1);

    @Deprecated
    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener var1);

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener var1);

    @Deprecated
    public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Deprecated
    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class a
    extends Handler {
        final /* synthetic */ e LF;

        public a(e var1, Looper var2);

        @Override
        public void handleMessage(Message var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected abstract class b<TListener> {
        final /* synthetic */ e LF;
        private boolean LG;
        private TListener mListener;

        public b(e var1, TListener var2);

        protected abstract void g(TListener var1);

        protected abstract void gT();

        public void gU();

        public void gV();

        public void unregister();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class c
    implements GoogleApiClient.ConnectionCallbacks {
        private final GooglePlayServicesClient.ConnectionCallbacks LH;

        public c(GooglePlayServicesClient.ConnectionCallbacks var1);

        public boolean equals(Object var1);

        @Override
        public void onConnected(Bundle var1);

        @Override
        public void onConnectionSuspended(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public abstract class d<TListener>
    extends e<T> {
        private final DataHolder II;
        final /* synthetic */ e LF;

        public d(e var1, TListener var2, DataHolder var3);

        protected abstract void a(TListener var1, DataHolder var2);

        protected final void g(TListener var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class e
    extends k.a {
        private e LI;

        public e(e var1);

        @Override
        public void b(int var1, IBinder var2, Bundle var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class f
    implements ServiceConnection {
        final /* synthetic */ e LF;

        f(e var1);

        @Override
        public void onServiceConnected(ComponentName var1, IBinder var2);

        @Override
        public void onServiceDisconnected(ComponentName var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class g
    implements GoogleApiClient.OnConnectionFailedListener {
        private final GooglePlayServicesClient.OnConnectionFailedListener LJ;

        public g(GooglePlayServicesClient.OnConnectionFailedListener var1);

        public boolean equals(Object var1);

        @Override
        public void onConnectionFailed(ConnectionResult var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected final class h
    extends e<T> {
        final /* synthetic */ e LF;
        public final Bundle LK;
        public final IBinder LL;
        public final int statusCode;

        public h(e var1, int var2, IBinder var3, Bundle var4);

        protected void b(Boolean var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

}

