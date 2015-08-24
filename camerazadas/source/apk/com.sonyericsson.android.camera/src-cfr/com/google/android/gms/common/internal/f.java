/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public final class f {
    private final b LM;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> LN = new ArrayList();
    final ArrayList<GoogleApiClient.ConnectionCallbacks> LO = new ArrayList();
    private boolean LP = false;
    private final ArrayList<GooglePlayServicesClient.OnConnectionFailedListener> LQ = new ArrayList();
    private final Handler mHandler;

    public f(Context context, Looper looper, b b) {
        this.LM = b;
        this.mHandler = new a(looper);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void aB(int var1_1) {
        this.mHandler.removeMessages(1);
        var2_2 = this.LN;
        // MONITORENTER : var2_2
        this.LP = true;
        var3_3 = new ArrayList<GoogleApiClient.ConnectionCallbacks>(this.LN).iterator();
        do {
            if (!var3_3.hasNext()) ** GOTO lbl-1000
            var4_4 = var3_3.next();
            if (!this.LM.gq()) lbl-1000: // 2 sources:
            {
                this.LP = false;
                // MONITOREXIT : var2_2
                return;
            }
            if (!this.LN.contains(var4_4)) continue;
            var4_4.onConnectionSuspended(var1_1);
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void b(ConnectionResult connectionResult) {
        this.mHandler.removeMessages(1);
        ArrayList<GooglePlayServicesClient.OnConnectionFailedListener> arrayList = this.LQ;
        synchronized (arrayList) {
            Iterator<GooglePlayServicesClient.OnConnectionFailedListener> iterator = new ArrayList<GooglePlayServicesClient.OnConnectionFailedListener>(this.LQ).iterator();
            while (iterator.hasNext()) {
                GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener = iterator.next();
                if (!this.LM.gq()) {
                    return;
                }
                if (!this.LQ.contains(onConnectionFailedListener)) continue;
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void d(Bundle var1_1) {
        var3_2 = true;
        var4_3 = this.LN;
        // MONITORENTER : var4_3
        var2_4 = this.LP == false;
        o.I(var2_4);
        this.mHandler.removeMessages(1);
        this.LP = true;
        var2_4 = this.LO.size() == 0 ? var3_2 : false;
        o.I(var2_4);
        var5_5 = new ArrayList<GoogleApiClient.ConnectionCallbacks>(this.LN).iterator();
        do {
            if (!var5_5.hasNext()) ** GOTO lbl-1000
            var6_6 = var5_5.next();
            if (!(this.LM.gq() && this.LM.isConnected())) lbl-1000: // 2 sources:
            {
                this.LO.clear();
                this.LP = false;
                // MONITOREXIT : var4_3
                return;
            }
            if (this.LO.contains(var6_6)) continue;
            var6_6.onConnected(var1_1);
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected void dL() {
        ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = this.LN;
        synchronized (arrayList) {
            this.d(this.LM.fC());
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        o.i(connectionCallbacks);
        ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = this.LN;
        synchronized (arrayList) {
            return this.LN.contains(connectionCallbacks);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        o.i(onConnectionFailedListener);
        ArrayList<GooglePlayServicesClient.OnConnectionFailedListener> arrayList = this.LQ;
        synchronized (arrayList) {
            return this.LQ.contains(onConnectionFailedListener);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        o.i(connectionCallbacks);
        ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = this.LN;
        // MONITORENTER : arrayList
        if (this.LN.contains(connectionCallbacks)) {
            Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + connectionCallbacks + " is already registered");
        } else {
            this.LN.add(connectionCallbacks);
        }
        // MONITOREXIT : arrayList
        if (!this.LM.isConnected()) return;
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, connectionCallbacks));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        o.i(onConnectionFailedListener);
        ArrayList<GooglePlayServicesClient.OnConnectionFailedListener> arrayList = this.LQ;
        synchronized (arrayList) {
            if (this.LQ.contains(onConnectionFailedListener)) {
                Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + onConnectionFailedListener + " is already registered");
            } else {
                this.LQ.add(onConnectionFailedListener);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        o.i(connectionCallbacks);
        ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = this.LN;
        synchronized (arrayList) {
            if (this.LN != null) {
                if (!this.LN.remove(connectionCallbacks)) {
                    Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + connectionCallbacks + " not found");
                } else if (this.LP) {
                    this.LO.add(connectionCallbacks);
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        o.i(onConnectionFailedListener);
        ArrayList<GooglePlayServicesClient.OnConnectionFailedListener> arrayList = this.LQ;
        synchronized (arrayList) {
            if (!(this.LQ == null || this.LQ.remove(onConnectionFailedListener))) {
                Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + onConnectionFailedListener + " not found");
            }
            return;
        }
    }

    final class a
    extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void handleMessage(Message message) {
            if (message.what != 1) {
                Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
                return;
            }
            ArrayList arrayList = f.this.LN;
            synchronized (arrayList) {
                if (f.this.LM.gq() && f.this.LM.isConnected() && f.this.LN.contains(message.obj)) {
                    Bundle bundle = f.this.LM.fC();
                    ((GoogleApiClient.ConnectionCallbacks)message.obj).onConnected(bundle);
                }
                return;
            }
        }
    }

    public static interface b {
        public Bundle fC();

        public boolean gq();

        public boolean isConnected();
    }

}

