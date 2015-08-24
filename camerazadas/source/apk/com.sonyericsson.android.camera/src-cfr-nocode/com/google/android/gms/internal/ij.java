/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.ig;
import com.google.android.gms.internal.il;
import com.google.android.gms.internal.in;
import com.google.android.gms.internal.io;
import com.google.android.gms.internal.ip;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ij
extends e<in> {
    private static final Object GL;
    private static final Object GM;
    private static final ip Gr;
    private final Cast.Listener EO;
    private double FA;
    private boolean FB;
    private boolean GA;
    private int GB;
    private int GC;
    private final AtomicLong GD;
    private String GE;
    private String GF;
    private Bundle GG;
    private Map<Long, BaseImplementation.b<Status>> GH;
    private b GI;
    private BaseImplementation.b<Cast.ApplicationConnectionResult> GJ;
    private BaseImplementation.b<Status> GK;
    private ApplicationMetadata Gs;
    private final CastDevice Gt;
    private final Map<String, Cast.MessageReceivedCallback> Gu;
    private final long Gv;
    private c Gw;
    private String Gx;
    private boolean Gy;
    private boolean Gz;
    private final Handler mHandler;

    static;

    public ij(Context var1, Looper var2, CastDevice var3, long var4, Cast.Listener var6, GoogleApiClient.ConnectionCallbacks var7, GoogleApiClient.OnConnectionFailedListener var8);

    static /* synthetic */ ApplicationMetadata a(ij var0, ApplicationMetadata var1);

    static /* synthetic */ BaseImplementation.b a(ij var0, BaseImplementation.b var1);

    static /* synthetic */ String a(ij var0, String var1);

    private void a(ig var1);

    static /* synthetic */ void a(ij var0, ig var1);

    static /* synthetic */ void a(ij var0, il var1);

    private void a(il var1);

    static /* synthetic */ BaseImplementation.b b(ij var0, BaseImplementation.b var1);

    static /* synthetic */ String b(ij var0, String var1);

    static /* synthetic */ void b(ij var0);

    private void c(BaseImplementation.b<Cast.ApplicationConnectionResult> var1);

    static /* synthetic */ void c(ij var0);

    static /* synthetic */ BaseImplementation.b d(ij var0);

    static /* synthetic */ Cast.Listener e(ij var0);

    private void e(BaseImplementation.b<Status> var1);

    static /* synthetic */ Handler f(ij var0);

    private void fB();

    private void fF();

    private void fG() throws IllegalStateException;

    static /* synthetic */ ip fH();

    static /* synthetic */ Object fI();

    static /* synthetic */ Object fJ();

    static /* synthetic */ Map g(ij var0);

    static /* synthetic */ CastDevice h(ij var0);

    static /* synthetic */ Map i(ij var0);

    static /* synthetic */ BaseImplementation.b j(ij var0);

    public void G(boolean var1) throws IllegalStateException, RemoteException;

    protected in L(IBinder var1);

    public void a(double var1) throws IllegalArgumentException, IllegalStateException, RemoteException;

    @Override
    protected void a(int var1, IBinder var2, Bundle var3);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public void a(String var1, Cast.MessageReceivedCallback var2) throws IllegalArgumentException, IllegalStateException, RemoteException;

    public void a(String var1, LaunchOptions var2, BaseImplementation.b<Cast.ApplicationConnectionResult> var3) throws IllegalStateException, RemoteException;

    public void a(String var1, BaseImplementation.b<Status> var2) throws IllegalStateException, RemoteException;

    public void a(String var1, String var2, BaseImplementation.b<Status> var3) throws IllegalArgumentException, IllegalStateException, RemoteException;

    public void a(String var1, boolean var2, BaseImplementation.b<Cast.ApplicationConnectionResult> var3) throws IllegalStateException, RemoteException;

    public void aE(String var1) throws IllegalArgumentException, RemoteException;

    public void b(String var1, String var2, BaseImplementation.b<Cast.ApplicationConnectionResult> var3) throws IllegalStateException, RemoteException;

    public void d(BaseImplementation.b<Status> var1) throws IllegalStateException, RemoteException;

    @Override
    public void disconnect();

    @Override
    public Bundle fC();

    public void fD() throws IllegalStateException, RemoteException;

    public double fE() throws IllegalStateException;

    public ApplicationMetadata getApplicationMetadata() throws IllegalStateException;

    public String getApplicationStatus() throws IllegalStateException;

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    public boolean isMute() throws IllegalStateException;

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class a
    implements Cast.ApplicationConnectionResult {
        private final Status CM;
        private final ApplicationMetadata GN;
        private final String GO;
        private final boolean GP;
        private final String vL;

        public a(Status var1);

        public a(Status var1, ApplicationMetadata var2, String var3, String var4, boolean var5);

        @Override
        public ApplicationMetadata getApplicationMetadata();

        @Override
        public String getApplicationStatus();

        @Override
        public String getSessionId();

        @Override
        public Status getStatus();

        @Override
        public boolean getWasLaunched();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class b
    implements GoogleApiClient.OnConnectionFailedListener {
        final /* synthetic */ ij GQ;

        private b(ij var1);

        /* synthetic */ b(ij var1,  var2);

        @Override
        public void onConnectionFailed(ConnectionResult var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class c
    extends io.a {
        final /* synthetic */ ij GQ;
        private AtomicBoolean GR;

        private c(ij var1);

        /* synthetic */ c(ij var1, com.google.android.gms.internal.ij$1 var2);

        private boolean ag(int var1);

        private void c(long var1, int var3);

        @Override
        public void a(ApplicationMetadata var1, String var2, String var3, boolean var4);

        @Override
        public void a(String var1, double var2, boolean var4);

        @Override
        public void a(String var1, long var2);

        @Override
        public void a(String var1, long var2, int var4);

        @Override
        public void ac(int var1);

        @Override
        public void ad(int var1);

        @Override
        public void ae(int var1);

        @Override
        public void af(int var1);

        @Override
        public void b(ig var1);

        @Override
        public void b(il var1);

        @Override
        public void b(String var1, byte[] var2);

        public boolean fK();

        public boolean fL();

        @Override
        public void k(String var1, String var2);

        @Override
        public void onApplicationDisconnected(int var1);

    }

}

