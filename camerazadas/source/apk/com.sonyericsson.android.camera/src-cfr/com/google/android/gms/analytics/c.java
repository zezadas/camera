/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.analytics.z;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.hc;
import java.util.List;
import java.util.Map;

class c
implements com.google.android.gms.analytics.b {
    private Context mContext;
    private ServiceConnection xG;
    private b xH;
    private c xI;
    private hc xJ;

    public c(Context context, b b, c c) {
        this.mContext = context;
        if (b == null) {
            throw new IllegalArgumentException("onConnectedListener cannot be null");
        }
        this.xH = b;
        if (c == null) {
            throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
        }
        this.xI = c;
    }

    private hc dI() {
        this.dJ();
        return this.xJ;
    }

    private void dK() {
        this.dL();
    }

    private void dL() {
        this.xH.onConnected();
    }

    @Override
    public void a(Map<String, String> map, long l, String string, List<hb> list) {
        try {
            this.dI().a(map, l, string, list);
            return;
        }
        catch (RemoteException var1_2) {
            z.T("sendHit failed: " + var1_2);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void connect() {
        Intent intent = new Intent("com.google.android.gms.analytics.service.START");
        intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
        intent.putExtra("app_package_name", this.mContext.getPackageName());
        if (this.xG != null) {
            z.T("Calling connect() while still connected, missing disconnect().");
            return;
        } else {
            this.xG = new a();
            boolean bl = this.mContext.bindService(intent, this.xG, 129);
            z.V("connect: bindService returned " + bl + " for " + intent);
            if (bl) return;
            {
                this.xG = null;
                this.xI.a(1, null);
                return;
            }
        }
    }

    @Override
    public void dH() {
        try {
            this.dI().dH();
            return;
        }
        catch (RemoteException var1_1) {
            z.T("clear hits failed: " + var1_1);
            return;
        }
    }

    protected void dJ() {
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
        this.xJ = null;
        if (this.xG != null) {
            try {
                this.mContext.unbindService(this.xG);
            }
            catch (IllegalArgumentException var1_1) {
            }
            catch (IllegalStateException var1_2) {}
            this.xG = null;
            this.xH.onDisconnected();
        }
    }

    public boolean isConnected() {
        if (this.xJ != null) {
            return true;
        }
        return false;
    }

    final class a
    implements ServiceConnection {
        a() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            z.V("service connected, binder: " + iBinder);
            try {
                if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(iBinder.getInterfaceDescriptor())) {
                    z.V("bound to service");
                    c.this.xJ = hc.a.E(iBinder);
                    c.this.dK();
                    return;
                }
            }
            catch (RemoteException var1_2) {
                // empty catch block
            }
            try {
                c.this.mContext.unbindService(this);
            }
            catch (IllegalArgumentException var1_3) {}
            c.this.xG = null;
            c.this.xI.a(2, null);
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            z.V("service disconnected: " + componentName);
            c.this.xG = null;
            c.this.xH.onDisconnected();
        }
    }

    public static interface b {
        public void onConnected();

        public void onDisconnected();
    }

    public static interface c {
        public void a(int var1, Intent var2);
    }

}

