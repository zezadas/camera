/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.ff;
import com.google.android.gms.internal.fh;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fm;
import com.google.android.gms.internal.fr;
import com.google.android.gms.internal.fy;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;

@ez
public abstract class fg
extends gg {
    private final fi pQ;
    private final ff.a tu;

    public fg(fi fi, ff.a a) {
        this.pQ = fi;
        this.tu = a;
    }

    private static fk a(fm object, fi fi) {
        try {
            object = object.b(fi);
            return object;
        }
        catch (RemoteException var0_1) {
            gs.d("Could not fetch ad response from ad request service.", var0_1);
            return null;
        }
        catch (NullPointerException var0_2) {
            gs.d("Could not fetch ad response from ad request service due to an Exception.", var0_2);
            return null;
        }
        catch (SecurityException var0_3) {
            gs.d("Could not fetch ad response from ad request service due to an Exception.", var0_3);
            return null;
        }
        catch (Throwable var0_4) {
            gb.e(var0_4);
            return null;
        }
    }

    public abstract void cC();

    public abstract fm cD();

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final void co() {
        block7 : {
            var1_1 = this.cD();
            if (var1_1 != null) break block7;
            var1_1 = new fk(0);
lbl6: // 3 sources:
            do {
                this.tu.a((fk)var1_1);
                return;
                break;
            } while (true);
        }
        var1_1 = var2_3 = fg.a((fm)var1_1, this.pQ);
        if (var2_3 != null) ** GOTO lbl6
        try {
            var1_1 = new fk(0);
            ** continue;
        }
        finally {
            this.cC();
        }
    }

    @Override
    public final void onStop() {
        this.cC();
    }

    @ez
    public static final class a
    extends fg {
        private final Context mContext;

        public a(Context context, fi fi, ff.a a) {
            super(fi, a);
            this.mContext = context;
        }

        @Override
        public void cC() {
        }

        @Override
        public fm cD() {
            Object object = gb.bD();
            object = new bm(object.getString("gads:sdk_core_location"), object.getString("gads:sdk_core_experiment_id"), object.getString("gads:block_autoclicks_experiment_id"));
            return fr.a(this.mContext, (bm)object, new cj(), new fy());
        }
    }

    @ez
    public static final class b
    extends fg
    implements GooglePlayServicesClient.ConnectionCallbacks,
    GooglePlayServicesClient.OnConnectionFailedListener {
        private final Object mw = new Object();
        private final ff.a tu;
        private final fh tv;

        public b(Context context, fi fi, ff.a a) {
            super(fi, a);
            this.tu = a;
            this.tv = new fh(context, this, this, fi.lD.wF);
            this.tv.connect();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void cC() {
            Object object = this.mw;
            synchronized (object) {
                if (this.tv.isConnected() || this.tv.isConnecting()) {
                    this.tv.disconnect();
                }
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public fm cD() {
            Object object = this.mw;
            synchronized (object) {
                try {
                    return this.tv.cE();
                }
                catch (IllegalStateException var2_3) {
                    return null;
                }
            }
        }

        @Override
        public void onConnected(Bundle bundle) {
            this.start();
        }

        @Override
        public void onConnectionFailed(ConnectionResult connectionResult) {
            this.tu.a(new fk(0));
        }

        @Override
        public void onDisconnected() {
            gs.S("Disconnected from remote ad request service.");
        }
    }

}

