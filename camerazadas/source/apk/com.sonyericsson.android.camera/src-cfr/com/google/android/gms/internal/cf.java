/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.cg;
import com.google.android.gms.internal.ch;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public final class cf {
    public static void a(Context context, b b) {
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) != 0) {
            b.a(bn.bs());
            return;
        }
        new a(context, b);
    }

    public static final class a
    implements GooglePlayServicesClient.ConnectionCallbacks,
    GooglePlayServicesClient.OnConnectionFailedListener {
        private final Object mw = new Object();
        private final b pN;
        private final cg pO;

        public a(Context context, b b) {
            this(context, b, false);
        }

        a(Context context, b b, boolean bl) {
            this.pN = b;
            this.pO = new cg(context, this, this, 6171000);
            if (!bl) {
                this.pO.connect();
            }
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Converted monitor instructions to comments
         * Lifted jumps to return sites
         */
        @Override
        public void onConnected(Bundle var1_1) {
            var1_1 = bn.bs();
            var3_3 = this.mw;
            // MONITORENTER : var3_3
            try {
                var2_4 = this.pO.bC();
                var2_4 = var2_4 != null ? var2_4.bD() : var1_1;
            }
            catch (IllegalStateException var2_5) {
                gs.d("Error when get Gservice values", var2_5);
                {
                    catch (Throwable var1_2) {
                        throw var1_2;
                    }
                }
                catch (RemoteException var2_6) {
                    gs.d("Error when get Gservice values", var2_6);
                }
            }
            if (this.pO.isConnected()) ** GOTO lbl-1000
            var1_1 = var2_4;
            if (this.pO.isConnecting()) lbl-1000: // 2 sources:
            {
                this.pO.disconnect();
                var1_1 = var2_4;
            } else {
                ** GOTO lbl23
            }
            ** GOTO lbl23
lbl23: // 7 sources:
            do {
                // MONITOREXIT : var3_3
                this.pN.a((Bundle)var1_1);
                return;
                break;
            } while (true);
            finally {
                if (!this.pO.isConnected() && !this.pO.isConnecting()) ** GOTO lbl23
                this.pO.disconnect();
                ** continue;
            }
        }

        @Override
        public void onConnectionFailed(ConnectionResult connectionResult) {
            this.pN.a(bn.bs());
        }

        @Override
        public void onDisconnected() {
            gs.S("Disconnected from remote ad request service.");
        }
    }

    public static interface b {
        public void a(Bundle var1);
    }

}

