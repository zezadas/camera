/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.jw;
import com.google.android.gms.tagmanager.bh;
import java.io.IOException;

class a {
    private static a anQ;
    private static Object xz;
    private volatile long anM = 900000;
    private volatile long anN = 30000;
    private volatile long anO;
    private a anP;
    private volatile boolean mClosed = false;
    private final Context mContext;
    private final Thread wf;
    private volatile AdvertisingIdClient.Info xB;
    private final ju yD;

    static {
        xz = new Object();
    }

    private a(Context context) {
        this(context, null, jw.hA());
    }

    /*
     * Enabled aggressive block sorting
     */
    a(Context context, a a, ju ju) {
        this.anP = new a(){

            @Override
            public AdvertisingIdClient.Info nM() {
                try {
                    AdvertisingIdClient.Info info = AdvertisingIdClient.getAdvertisingIdInfo(a.this.mContext);
                    return info;
                }
                catch (IllegalStateException var1_2) {
                    bh.W("IllegalStateException getting Advertising Id Info");
                    return null;
                }
                catch (GooglePlayServicesRepairableException var1_3) {
                    bh.W("GooglePlayServicesRepairableException getting Advertising Id Info");
                    return null;
                }
                catch (IOException var1_4) {
                    bh.W("IOException getting Ad Id Info");
                    return null;
                }
                catch (GooglePlayServicesNotAvailableException var1_5) {
                    bh.W("GooglePlayServicesNotAvailableException getting Advertising Id Info");
                    return null;
                }
                catch (Exception var1_6) {
                    bh.W("Unknown exception. Could not get the Advertising Id Info.");
                    return null;
                }
            }
        };
        this.yD = ju;
        this.mContext = context != null ? context.getApplicationContext() : context;
        if (a != null) {
            this.anP = a;
        }
        this.wf = new Thread(new Runnable(){

            @Override
            public void run() {
                a.this.nK();
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    static a W(Context context) {
        if (anQ == null) {
            Object object = xz;
            synchronized (object) {
                if (anQ == null) {
                    anQ = new a(context);
                    anQ.start();
                }
            }
        }
        return anQ;
    }

    private void nK() {
        Process.setThreadPriority(10);
        while (!this.mClosed) {
            try {
                this.xB = this.anP.nM();
                Thread.sleep(this.anM);
            }
            catch (InterruptedException var1_1) {
                bh.U("sleep interrupted in AdvertiserDataPoller thread; continuing");
            }
        }
    }

    private void nL() {
        if (this.yD.currentTimeMillis() - this.anO < this.anN) {
            return;
        }
        this.interrupt();
        this.anO = this.yD.currentTimeMillis();
    }

    void interrupt() {
        this.wf.interrupt();
    }

    public boolean isLimitAdTrackingEnabled() {
        this.nL();
        if (this.xB == null) {
            return true;
        }
        return this.xB.isLimitAdTrackingEnabled();
    }

    public String nJ() {
        this.nL();
        if (this.xB == null) {
            return null;
        }
        return this.xB.getId();
    }

    void start() {
        this.wf.start();
    }

    public static interface a {
        public AdvertisingIdClient.Info nM();
    }

}

