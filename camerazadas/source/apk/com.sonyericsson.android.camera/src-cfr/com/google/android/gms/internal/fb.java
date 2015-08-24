/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.android.gms.internal.an;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fa;
import com.google.android.gms.internal.ff;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.k;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public class fb
extends gg
implements ff.a {
    private final Context mContext;
    private final Object mw = new Object();
    private cm pR;
    private final fa.a sU;
    private final Object sV = new Object();
    private final fi.a sW;
    private final k sX;
    private gg sY;
    private fk sZ;

    public fb(Context context, fi.a a, k k, fa.a a2) {
        this.sU = a2;
        this.mContext = context;
        this.sW = a;
        this.sX = k;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private ay a(fi var1_1) throws a {
        if (this.sZ.tL == null) {
            throw new a("The ad response must specify one of the supported ad sizes.", 0);
        }
        var9_3 = this.sZ.tL.split("x");
        if (var9_3.length != 2) {
            throw new a("Could not parse the ad size from the ad response: " + this.sZ.tL, 0);
        }
        try {}
        catch (NumberFormatException var1_2) {
            throw new a("Could not parse the ad size from the ad response: " + this.sZ.tL, 0);
        }
        ** GOTO lbl10
lbl10: // 1 sources:
        var6_4 = Integer.parseInt(var9_3[0]);
        var7_5 = Integer.parseInt(var9_3[1]);
        for (String var10_11 : var1_1.lH.oh) {
            var2_8 = this.mContext.getResources().getDisplayMetrics().density;
            var4_9 = var10_11.width == -1 ? (int)((float)var10_11.widthPixels / var2_8) : var10_11.width;
            var5_10 = var10_11.height == -2 ? (int)((float)var10_11.heightPixels / var2_8) : var10_11.height;
            if (var6_4 != var4_9 || var7_5 != var5_10) continue;
            return new ay((ay)var10_11, var1_1.lH.oh);
        }
        throw new a("The ad size from the ad response was not one of the requested sizes: " + this.sZ.tL, 0);
    }

    private boolean c(long l) throws a {
        l = 60000 - (SystemClock.elapsedRealtime() - l);
        if (l <= 0) {
            return false;
        }
        try {
            this.mw.wait(l);
            return true;
        }
        catch (InterruptedException var3_2) {
            throw new a("Ad request cancelled.", -1);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private void cx() throws a {
        if (this.sZ.errorCode == -3) {
            return;
        }
        if (TextUtils.isEmpty((CharSequence)this.sZ.tG)) {
            throw new a("No fill from ad server.", 3);
        }
        gb.a(this.mContext, this.sZ.tF);
        if (!this.sZ.tI) return;
        try {
            this.pR = new cm(this.sZ.tG);
            return;
        }
        catch (JSONException var1_1) {
            throw new a("Could not parse mediation config: " + this.sZ.tG, 0);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private void e(long l) throws a {
        do {
            if (this.c(l)) continue;
            throw new a("Timed out waiting for ad response.", 2);
        } while (this.sZ == null);
        Object object = this.sV;
        // MONITORENTER : object
        this.sY = null;
        // MONITOREXIT : object
        if (this.sZ.errorCode == -2) return;
        if (this.sZ.errorCode == -3) return;
        throw new a("There was a problem getting an ad response. ErrorCode: " + this.sZ.errorCode, this.sZ.errorCode);
    }

    private void r(boolean bl) {
        gb.cU().v(bl);
        an an = gb.cU().l(this.mContext);
        if (!(an == null || an.isAlive())) {
            gs.S("start fetching content...");
            an.aV();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void a(fk fk) {
        Object object = this.mw;
        synchronized (object) {
            gs.S("Received ad response.");
            this.sZ = fk;
            this.mw.notify();
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
    @Override
    public void co() {
        var11_1 = this.mw;
        // MONITORENTER : var11_1
        gs.S("AdLoaderBackgroundTask started.");
        var9_2 = this.sX.z().a(this.mContext);
        var12_3 = new fi(this.sW, (String)var9_2);
        var1_4 = -2;
        var2_6 = var4_5 = -1;
        var6_7 = SystemClock.elapsedRealtime();
        var2_6 = var4_5;
        var10_8 = ff.a(this.mContext, var12_3, this);
        var2_6 = var4_5;
        var9_2 = this.sV;
        var2_6 = var4_5;
        // MONITORENTER : var9_2
        try {
            this.sY = var10_8;
            if (this.sY == null) {
                throw new a("Could not start the ad request service.", 0);
            } else {
                ** GOTO lbl25
            }
        }
        catch (Throwable var10_9) {
            // MONITOREXIT : var9_2
            var2_6 = var4_5;
            throw var10_9;
lbl25: // 2 sources:
            // MONITOREXIT : var9_2
            var2_6 = var4_5;
            try {
                this.e(var6_7);
                var2_6 = var4_5;
                var2_6 = var4_5 = SystemClock.elapsedRealtime();
                this.cx();
                var2_6 = var4_5;
                if (var12_3.lH.oh == null) ** GOTO lbl40
                var2_6 = var4_5;
                var9_2 = this.a(var12_3);
                ** GOTO lbl41
            }
            catch (a var10_10) {
                block20 : {
                    block19 : {
                        var9_2 = null;
                        ** GOTO lbl47
lbl40: // 1 sources:
                        var9_2 = null;
lbl41: // 2 sources:
                        try {
                            this.r(this.sZ.tT);
                            var2_6 = var4_5;
                            break block19;
                        }
                        catch (a var10_12) {
                            var2_6 = var4_5;
                        }
lbl47: // 2 sources:
                        if ((var1_4 = var10_8.getErrorCode()) == 3 || var1_4 == -1) {
                            gs.U(var10_8.getMessage());
                        } else {
                            gs.W(var10_8.getMessage());
                        }
                        this.sZ = this.sZ == null ? new fk(var1_4) : new fk(var1_4, this.sZ.qj);
                        gr.wC.post(new Runnable(){

                            @Override
                            public void run() {
                                fb.this.onStop();
                            }
                        });
                    }
                    if (!(var8_13 = TextUtils.isEmpty((CharSequence)this.sZ.tQ))) {
                        try {
                            var10_8 = new JSONObject(this.sZ.tQ);
                            break block20;
                        }
                        catch (Exception var10_11) {
                            gs.b("Error parsing the JSON for Active View.", var10_11);
                        }
                    }
                    var10_8 = null;
                }
                var9_2 = new fz.a(var12_3, this.sZ, this.pR, (ay)var9_2, var1_4, var2_6, this.sZ.tM, (JSONObject)var10_8);
                gr.wC.post(new Runnable((fz.a)var9_2){
                    final /* synthetic */ fz.a tb;

                    /*
                     * Enabled aggressive block sorting
                     * Enabled unnecessary exception pruning
                     */
                    @Override
                    public void run() {
                        Object object = fb.this.mw;
                        synchronized (object) {
                            fb.this.sU.a(this.tb);
                            return;
                        }
                    }
                });
                // MONITOREXIT : var11_1
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onStop() {
        Object object = this.sV;
        synchronized (object) {
            if (this.sY != null) {
                this.sY.cancel();
            }
            return;
        }
    }

    @ez
    private static final class a
    extends Exception {
        private final int tc;

        public a(String string, int n) {
            super(string);
            this.tc = n;
        }

        public int getErrorCode() {
            return this.tc;
        }
    }

}

