/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.o;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class b
implements GoogleApiClient {
    private final Looper IH;
    final int IU;
    private final Lock IV = new ReentrantLock();
    private final Condition IW = this.IV.newCondition();
    private final f IX;
    private final int IY;
    final Queue<c<?>> IZ = new LinkedList();
    private final a Iz;
    private ConnectionResult Ja;
    private int Jb;
    private volatile int Jc = 4;
    private volatile int Jd;
    private boolean Je = false;
    private int Jf;
    private long Jg = 5000;
    final Handler Jh;
    private final Bundle Ji = new Bundle();
    private final Map<Api.c<?>, Api.a> Jj = new HashMap();
    private final List<String> Jk;
    private boolean Jl;
    private final Set<com.google.android.gms.common.api.c<?>> Jm = Collections.newSetFromMap(new WeakHashMap());
    final Set<c<?>> Jn = Collections.newSetFromMap(new ConcurrentHashMap());
    private final GoogleApiClient.ConnectionCallbacks Jo;
    private final f.b Jp;

    public b(Context context, Looper looper, ClientSettings clientSettings, Map<Api<?>, Api.ApiOptions> map, Set<GoogleApiClient.ConnectionCallbacks> iterator, Set<GoogleApiClient.OnConnectionFailedListener> object32, int n, int n2) {
        void var7_11;
        void var8_12;
        this.Iz = new a(){

            @Override
            public void b(c<?> c) {
                b.this.Jn.remove(c);
            }
        };
        this.Jo = new GoogleApiClient.ConnectionCallbacks(){

            @Override
            public void onConnected(Bundle bundle) {
                b.this.IV.lock();
                try {
                    if (b.this.Jc == 1) {
                        if (bundle != null) {
                            b.this.Ji.putAll(bundle);
                        }
                        b.this.gm();
                    }
                    return;
                }
                finally {
                    b.this.IV.unlock();
                }
            }

            /*
             * Exception decompiling
             */
            @Override
            public void onConnectionSuspended(int var1_1) {
                // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
                // org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
                // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:369)
                // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:447)
                // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
                // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
                // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
                // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
                // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
                // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
                // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
                // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:644)
                // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:727)
                // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
                // org.benf.cfr.reader.Main.doJar(Main.java:126)
                // org.benf.cfr.reader.Main.main(Main.java:178)
                throw new IllegalStateException("Decompilation failed");
            }
        };
        this.Jp = new f.b(){

            @Override
            public Bundle fC() {
                return null;
            }

            @Override
            public boolean gq() {
                return b.this.Jl;
            }

            @Override
            public boolean isConnected() {
                return b.this.isConnected();
            }
        };
        this.IX = new f(context, looper, this.Jp);
        this.IH = looper;
        this.Jh = new b(looper);
        this.IY = var7_11;
        this.IU = var8_12;
        for (Object object2 : iterator) {
            this.IX.registerConnectionCallbacks((GoogleApiClient.ConnectionCallbacks)object2);
        }
        for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : object32) {
            this.IX.registerConnectionFailedListener(onConnectionFailedListener);
        }
        for (Api api : map.keySet()) {
            Object object2;
            object2 = api.gb();
            Api.ApiOptions apiOptions = map.get(api);
            this.Jj.put(api.ge(), (Api.a)b.a(object2, apiOptions, context, looper, clientSettings, this.Jo, new GoogleApiClient.OnConnectionFailedListener((Api.b)object2){
                final /* synthetic */ Api.b Jr;

                @Override
                public void onConnectionFailed(ConnectionResult connectionResult) {
                    b.this.IV.lock();
                    try {
                        if (b.this.Ja == null || this.Jr.getPriority() < b.this.Jb) {
                            b.this.Ja = connectionResult;
                            b.this.Jb = this.Jr.getPriority();
                        }
                        b.this.gm();
                        return;
                    }
                    finally {
                        b.this.IV.unlock();
                    }
                }
            }));
        }
        this.Jk = Collections.unmodifiableList(clientSettings.getScopes());
    }

    private static <C extends Api.a, O> C a(Api.b<C, O> b, Object object, Context context, Looper looper, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return b.a(context, looper, clientSettings, object, connectionCallbacks, onConnectionFailedListener);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private <A extends Api.a> void a(c<A> c) throws DeadObjectException {
        this.IV.lock();
        boolean bl = c.ge() != null;
        o.b(bl, (Object)"This task can not be executed or enqueued (it's probably a Batch or malformed)");
        this.Jn.add(c);
        c.a(this.Iz);
        if (this.go()) {
            c.m(new Status(8));
            this.IV.unlock();
            return;
        }
        c.b(this.a((T)c.ge()));
        return;
    }

    static /* synthetic */ void a(b b, int n) {
        b.aj(n);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void aj(int n) {
        this.IV.lock();
        try {
            if (this.Jc != 3) {
                if (n == -1) {
                    Iterator iterator;
                    if (this.isConnecting()) {
                        iterator = this.IZ.iterator();
                        while (iterator.hasNext()) {
                            Object object = iterator.next();
                            if (object.gj() == 1) continue;
                            object.cancel();
                            iterator.remove();
                        }
                    } else {
                        this.IZ.clear();
                    }
                    iterator = this.Jn.iterator();
                    while (iterator.hasNext()) {
                        iterator.next().cancel();
                    }
                    this.Jn.clear();
                    iterator = this.Jm.iterator();
                    while (iterator.hasNext()) {
                        ((com.google.android.gms.common.api.c)iterator.next()).clear();
                    }
                    this.Jm.clear();
                    if (!(this.Ja != null || this.IZ.isEmpty())) {
                        this.Je = true;
                        return;
                    }
                }
                boolean bl = this.isConnecting();
                boolean bl2 = this.isConnected();
                this.Jc = 3;
                if (bl) {
                    if (n == -1) {
                        this.Ja = null;
                    }
                    this.IW.signalAll();
                }
                this.Jl = false;
                for (Object object : this.Jj.values()) {
                    if (!object.isConnected()) continue;
                    object.disconnect();
                }
                this.Jl = true;
                this.Jc = 4;
                if (bl2) {
                    if (n != -1) {
                        this.IX.aB(n);
                    }
                    this.Jl = false;
                }
            }
            return;
        }
        finally {
            this.IV.unlock();
        }
    }

    static /* synthetic */ int b(b b, int n) {
        b.Jd = n;
        return n;
    }

    static /* synthetic */ long f(b b) {
        return b.Jg;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void gm() {
        --this.Jf;
        if (this.Jf == 0) {
            if (this.Ja != null) {
                this.Je = false;
                this.aj(3);
                if (this.go()) {
                    this.Jh.sendMessageDelayed(this.Jh.obtainMessage(1), this.Jg);
                } else {
                    this.IX.b(this.Ja);
                }
                this.Jl = false;
            }
        } else {
            return;
        }
        this.Jc = 2;
        this.gp();
        this.IW.signalAll();
        this.gn();
        if (this.Je) {
            this.Je = false;
            this.aj(-1);
            return;
        }
        Bundle bundle = this.Ji.isEmpty() ? null : this.Ji;
        this.IX.d(bundle);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private void gn() {
        block5 : {
            block6 : {
                this.IV.lock();
                try {
                    if (this.isConnected()) break block5;
                    if (!this.go()) break block6;
                    break block5;
                }
                catch (Throwable var2_3) {
                    this.IV.unlock();
                    throw var2_3;
                }
            }
            var1_1 = false;
            ** GOTO lbl14
        }
        var1_1 = true;
lbl14: // 2 sources:
        o.a(var1_1, "GoogleApiClient is not connected yet.");
        while (!(var1_1 = this.IZ.isEmpty())) {
            try {
                this.a((T)this.IZ.remove());
            }
            catch (DeadObjectException var2_2) {
                Log.w("GoogleApiClientImpl", "Service died while flushing queue", var2_2);
            }
        }
        this.IV.unlock();
    }

    private boolean go() {
        if (this.Jd != 0) {
            return true;
        }
        return false;
    }

    private void gp() {
        this.IV.lock();
        try {
            this.Jd = 0;
            this.Jh.removeMessages(1);
            return;
        }
        finally {
            this.IV.unlock();
        }
    }

    static /* synthetic */ int h(b b) {
        int n = b.Jd;
        b.Jd = n - 1;
        return n;
    }

    @Override
    public <C extends Api.a> C a(Api.c<C> object) {
        object = this.Jj.get(object);
        o.b(object, (Object)"Appropriate Api was not requested.");
        return (C)object;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public <A extends Api.a, R extends Result, T extends BaseImplementation.a<R, A>> T a(T t) {
        this.IV.lock();
        try {
            t.a(new BaseImplementation.CallbackHandler(this.getLooper()));
            if (this.isConnected()) {
                this.b(t);
                do {
                    return t;
                    break;
                } while (true);
            }
            this.IZ.add(t);
            return t;
        }
        finally {
            this.IV.unlock();
        }
    }

    @Override
    public boolean a(Scope scope) {
        return this.Jk.contains(scope.gs());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public <A extends Api.a, T extends BaseImplementation.a<? extends Result, A>> T b(T t) {
        boolean bl = this.isConnected() || this.go();
        o.a(bl, "GoogleApiClient is not connected yet.");
        this.gn();
        try {
            this.a(t);
        }
        catch (DeadObjectException var3_3) {
            this.aj(1);
            return t;
        }
        return t;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public ConnectionResult blockingConnect() {
        boolean bl = Looper.myLooper() != Looper.getMainLooper();
        o.a(bl, "blockingConnect must not be called on the UI thread");
        this.IV.lock();
        try {
            this.connect();
            while (bl = this.isConnecting()) {
                try {
                    this.IW.await();
                    continue;
                }
                catch (InterruptedException var2_2) {
                    Thread.currentThread().interrupt();
                    ConnectionResult connectionResult = new ConnectionResult(15, null);
                    this.IV.unlock();
                    return connectionResult;
                }
            }
            if (this.isConnected()) {
                ConnectionResult connectionResult = ConnectionResult.HE;
                return connectionResult;
            }
            if (this.Ja != null) {
                ConnectionResult connectionResult = this.Ja;
                return connectionResult;
            }
            ConnectionResult connectionResult = new ConnectionResult(13, null);
            return connectionResult;
        }
        finally {
            this.IV.unlock();
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    public ConnectionResult blockingConnect(long var1_1, TimeUnit var3_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:369)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:447)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    public <L> com.google.android.gms.common.api.c<L> c(L object) {
        o.b(object, (Object)"Listener must not be null");
        this.IV.lock();
        try {
            object = new com.google.android.gms.common.api.c<L>(this.IH, object);
            this.Jm.add((Object)object);
            return object;
        }
        finally {
            this.IV.unlock();
        }
    }

    @Override
    public void connect() {
        block5 : {
            boolean bl;
            this.IV.lock();
            this.Je = false;
            if (!this.isConnected() && !(bl = this.isConnecting())) break block5;
            this.IV.unlock();
            return;
        }
        try {
            this.Jl = true;
            this.Ja = null;
            this.Jc = 1;
            this.Ji.clear();
            this.Jf = this.Jj.size();
            Iterator<Api.a> iterator = this.Jj.values().iterator();
            while (iterator.hasNext()) {
                iterator.next().connect();
            }
        }
        catch (Throwable var2_3) {
            throw var2_3;
        }
        finally {
            this.IV.unlock();
        }
    }

    @Override
    public void disconnect() {
        this.gp();
        this.aj(-1);
    }

    @Override
    public Looper getLooper() {
        return this.IH;
    }

    @Override
    public boolean isConnected() {
        if (this.Jc == 2) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isConnecting() {
        if (this.Jc == 1) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.IX.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override
    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.IX.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    @Override
    public void reconnect() {
        this.disconnect();
        this.connect();
    }

    @Override
    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.IX.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override
    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.IX.registerConnectionFailedListener(onConnectionFailedListener);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void stopAutoManage(FragmentActivity fragmentActivity) {
        boolean bl = this.IY >= 0;
        o.a(bl, "Called stopAutoManage but automatic lifecycle management is not enabled.");
        d.a(fragmentActivity).al(this.IY);
    }

    @Override
    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.IX.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override
    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.IX.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    static interface a {
        public void b(c<?> var1);
    }

    class b
    extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            if (message.what == 1) {
                block5 : {
                    boolean bl;
                    b.this.IV.lock();
                    if (!b.this.isConnected() && !b.this.isConnecting() && (bl = b.this.go())) break block5;
                    b.this.IV.unlock();
                    return;
                }
                try {
                    b.h(b.this);
                    b.this.connect();
                    return;
                }
                finally {
                    b.this.IV.unlock();
                }
            }
            Log.wtf("GoogleApiClientImpl", "Don't know how to handle this message.");
        }
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

