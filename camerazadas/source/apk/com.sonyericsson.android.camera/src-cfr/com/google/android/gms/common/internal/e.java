/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.o;
import java.util.ArrayList;

public abstract class e<T extends IInterface>
implements Api.a,
f.b {
    public static final String[] LE = new String[]{"service_esmobile", "service_googleme"};
    private final String[] Ds;
    private final Looper IH;
    private final com.google.android.gms.common.internal.f IX;
    private final ArrayList<e<T>> LA = new ArrayList();
    private e<T> LB;
    private volatile int LC = 1;
    boolean LD = false;
    private T Lz;
    private final Context mContext;
    final Handler mHandler;

    protected /* varargs */ e(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String ... arrstring) {
        this.mContext = o.i(context);
        this.IH = o.b(looper, (Object)"Looper must not be null");
        this.IX = new com.google.android.gms.common.internal.f(context, looper, this);
        this.mHandler = new a(looper);
        this.c(arrstring);
        this.Ds = arrstring;
        this.registerConnectionCallbacks(o.i(connectionCallbacks));
        this.registerConnectionFailedListener(o.i(onConnectionFailedListener));
    }

    @Deprecated
    protected /* varargs */ e(Context context, GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener, String ... arrstring) {
        this(context, context.getMainLooper(), new c(connectionCallbacks), new g(onConnectionFailedListener), arrstring);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void az(int n) {
        int n2 = this.LC;
        this.LC = n;
        if (n2 == n) return;
        {
            if (n == 3) {
                this.onConnected();
                return;
            } else {
                if (n2 != 3 || n != 1) return;
                {
                    this.onDisconnected();
                    return;
                }
            }
        }
    }

    protected final void N(IBinder iBinder) {
        try {
            this.a(l.a.Q(iBinder), new e(this));
            return;
        }
        catch (RemoteException var1_2) {
            Log.w("GmsClient", "service died");
            return;
        }
    }

    protected void a(int n, IBinder iBinder, Bundle bundle) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, new h(n, iBinder, bundle)));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Deprecated
    public final void a(e<T> e) {
        ArrayList<e<T>> arrayList = this.LA;
        synchronized (arrayList) {
            this.LA.add(e);
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(2, e));
    }

    protected abstract void a(l var1, e var2) throws RemoteException;

    public void aA(int n) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, n));
    }

    protected /* varargs */ void c(String ... arrstring) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void connect() {
        this.LD = true;
        this.az(2);
        int n = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.mContext);
        if (n != 0) {
            this.az(1);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(3, n));
            return;
        } else {
            if (this.LB != null) {
                Log.e("GmsClient", "Calling connect() while still connected, missing disconnect().");
                this.Lz = null;
                com.google.android.gms.common.internal.g.J(this.mContext).b(this.getStartServiceAction(), this.LB);
            }
            this.LB = new f();
            if (com.google.android.gms.common.internal.g.J(this.mContext).a(this.getStartServiceAction(), this.LB)) return;
            {
                Log.e("GmsClient", "unable to connect to service: " + this.getStartServiceAction());
                this.mHandler.sendMessage(this.mHandler.obtainMessage(3, 9));
                return;
            }
        }
    }

    protected final void dJ() {
        if (!this.isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void disconnect() {
        this.LD = false;
        ArrayList<e<T>> arrayList = this.LA;
        synchronized (arrayList) {
            int n = this.LA.size();
            for (int i = 0; i < n; ++i) {
                ((b)this.LA.get(i)).gV();
            }
            this.LA.clear();
        }
        this.az(1);
        this.Lz = null;
        if (this.LB != null) {
            com.google.android.gms.common.internal.g.J(this.mContext).b(this.getStartServiceAction(), this.LB);
            this.LB = null;
        }
    }

    @Override
    public Bundle fC() {
        return null;
    }

    public final String[] gR() {
        return this.Ds;
    }

    public final T gS() {
        this.dJ();
        return this.Lz;
    }

    public final Context getContext() {
        return this.mContext;
    }

    @Override
    public final Looper getLooper() {
        return this.IH;
    }

    protected abstract String getServiceDescriptor();

    protected abstract String getStartServiceAction();

    @Override
    public boolean gq() {
        return this.LD;
    }

    @Override
    public boolean isConnected() {
        if (this.LC == 3) {
            return true;
        }
        return false;
    }

    public boolean isConnecting() {
        if (this.LC == 2) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        return this.IX.isConnectionCallbacksRegistered(new c(connectionCallbacks));
    }

    @Deprecated
    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.IX.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    protected abstract T j(IBinder var1);

    protected void onConnected() {
    }

    protected void onDisconnected() {
    }

    @Deprecated
    public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        this.IX.registerConnectionCallbacks(new c(connectionCallbacks));
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.IX.registerConnectionCallbacks(connectionCallbacks);
    }

    @Deprecated
    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.IX.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.IX.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Deprecated
    public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        this.IX.unregisterConnectionCallbacks(new c(connectionCallbacks));
    }

    @Deprecated
    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.IX.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    final class a
    extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message object) {
            if (!(object.what != 1 || e.this.isConnecting())) {
                object = (b)object.obj;
                object.gT();
                object.unregister();
                return;
            }
            if (object.what == 3) {
                e.this.IX.b(new ConnectionResult((Integer)object.obj, null));
                return;
            }
            if (object.what == 4) {
                e.this.az(1);
                e.this.Lz = null;
                e.this.IX.aB((Integer)object.obj);
                return;
            }
            if (!(object.what != 2 || e.this.isConnected())) {
                object = (b)object.obj;
                object.gT();
                object.unregister();
                return;
            }
            if (object.what == 2 || object.what == 1) {
                ((b)object.obj).gU();
                return;
            }
            Log.wtf("GmsClient", "Don't know how to handle this message.");
        }
    }

    protected abstract class b<TListener> {
        private boolean LG;
        private TListener mListener;

        public b(TListener TListener) {
            this.mListener = TListener;
            this.LG = false;
        }

        protected abstract void g(TListener var1);

        protected abstract void gT();

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Converted monitor instructions to comments
         * Lifted jumps to return sites
         */
        public void gU() {
            // MONITORENTER : this
            TListener TListener = this.mListener;
            if (this.LG) {
                Log.w("GmsClient", "Callback proxy " + this + " being reused. This is not safe.");
            }
            // MONITOREXIT : this
            if (TListener != null) {
                try {
                    this.g(TListener);
                }
                catch (RuntimeException var1_2) {
                    this.gT();
                    throw var1_2;
                }
            } else {
                this.gT();
            }
            // MONITORENTER : this
            this.LG = true;
            // MONITOREXIT : this
            this.unregister();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public void gV() {
            synchronized (this) {
                this.mListener = null;
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public void unregister() {
            this.gV();
            ArrayList arrayList = e.this.LA;
            synchronized (arrayList) {
                e.this.LA.remove(this);
                return;
            }
        }
    }

    public static final class c
    implements GoogleApiClient.ConnectionCallbacks {
        private final GooglePlayServicesClient.ConnectionCallbacks LH;

        public c(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
            this.LH = connectionCallbacks;
        }

        public boolean equals(Object object) {
            if (object instanceof c) {
                return this.LH.equals(((c)object).LH);
            }
            return this.LH.equals(object);
        }

        @Override
        public void onConnected(Bundle bundle) {
            this.LH.onConnected(bundle);
        }

        @Override
        public void onConnectionSuspended(int n) {
            this.LH.onDisconnected();
        }
    }

    public abstract class d<TListener>
    extends e<T> {
        private final DataHolder II;

        public d(TListener TListener, DataHolder dataHolder) {
            super(TListener);
            this.II = dataHolder;
        }

        protected abstract void a(TListener var1, DataHolder var2);

        protected final void g(TListener TListener) {
            this.a(TListener, this.II);
        }

        protected void gT() {
            if (this.II != null) {
                this.II.close();
            }
        }
    }

    public static final class e
    extends k.a {
        private e LI;

        public e(e e) {
            this.LI = e;
        }

        @Override
        public void b(int n, IBinder iBinder, Bundle bundle) {
            o.b("onPostInitComplete can be called only once per call to getServiceFromBroker", (Object)this.LI);
            this.LI.a(n, iBinder, bundle);
            this.LI = null;
        }
    }

    final class f
    implements ServiceConnection {
        f() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            e.this.N(iBinder);
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            e.this.mHandler.sendMessage(e.this.mHandler.obtainMessage(4, 1));
        }
    }

    public static final class g
    implements GoogleApiClient.OnConnectionFailedListener {
        private final GooglePlayServicesClient.OnConnectionFailedListener LJ;

        public g(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.LJ = onConnectionFailedListener;
        }

        public boolean equals(Object object) {
            if (object instanceof g) {
                return this.LJ.equals(((g)object).LJ);
            }
            return this.LJ.equals(object);
        }

        @Override
        public void onConnectionFailed(ConnectionResult connectionResult) {
            this.LJ.onConnectionFailed(connectionResult);
        }
    }

    protected final class h
    extends e<T> {
        public final Bundle LK;
        public final IBinder LL;
        public final int statusCode;

        public h(int n, IBinder iBinder, Bundle bundle) {
            super(true);
            this.statusCode = n;
            this.LL = iBinder;
            this.LK = bundle;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        protected void b(Boolean object) {
            if (object == null) {
                e.this.az(1);
                return;
            }
            switch (this.statusCode) {
                default: {
                    object = this.LK != null ? (PendingIntent)this.LK.getParcelable("pendingIntent") : null;
                }
                case 0: {
                    try {
                        object = this.LL.getInterfaceDescriptor();
                        if (e.this.getServiceDescriptor().equals(object)) {
                            e.this.Lz = e.this.j(this.LL);
                            if (e.this.Lz != null) {
                                e.this.az(3);
                                e.this.IX.dL();
                                return;
                            }
                        }
                    }
                    catch (RemoteException var1_2) {
                        // empty catch block
                    }
                    com.google.android.gms.common.internal.g.J(e.this.mContext).b(e.this.getStartServiceAction(), e.this.LB);
                    e.this.LB = null;
                    e.this.az(1);
                    e.this.Lz = null;
                    e.this.IX.b(new ConnectionResult(8, null));
                    return;
                }
                case 10: {
                    e.this.az(1);
                    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                }
            }
            if (e.this.LB != null) {
                com.google.android.gms.common.internal.g.J(e.this.mContext).b(e.this.getStartServiceAction(), e.this.LB);
                e.this.LB = null;
            }
            e.this.az(1);
            e.this.Lz = null;
            e.this.IX.b(new ConnectionResult(this.statusCode, (PendingIntent)object));
        }

        protected /* synthetic */ void g(Object object) {
            this.b((Boolean)object);
        }

        protected void gT() {
        }
    }

}

