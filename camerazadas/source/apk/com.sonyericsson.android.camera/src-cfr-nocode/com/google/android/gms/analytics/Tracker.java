/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.analytics.ExceptionReporter;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.TrackerHandler;
import com.google.android.gms.analytics.ac;
import com.google.android.gms.analytics.ad;
import com.google.android.gms.analytics.ai;
import com.google.android.gms.analytics.g;
import com.google.android.gms.analytics.h;
import com.google.android.gms.internal.ju;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public class Tracker {
    private final TrackerHandler Bm;
    private ac Bn;
    private final h Bo;
    private final ad Bp;
    private final g Bq;
    private boolean Br;
    private a Bs;
    private ai Bt;
    private ExceptionReporter Bu;
    private Context mContext;
    private final Map<String, String> qM;

    Tracker(String var1, TrackerHandler var2, Context var3);

    Tracker(String var1, TrackerHandler var2, h var3, ad var4, g var5, ac var6, Context var7);

    static /* synthetic */ a b(Tracker var0);

    static /* synthetic */ ai c(Tracker var0);

    void a(ai var1);

    long eT();

    boolean eU();

    public void enableAdvertisingIdCollection(boolean var1);

    public void enableAutoActivityTracking(boolean var1);

    public void enableExceptionReporting(boolean var1);

    public String get(String var1);

    public void send(Map<String, String> var1);

    public void set(String var1, String var2);

    public void setAnonymizeIp(boolean var1);

    public void setAppId(String var1);

    public void setAppInstallerId(String var1);

    public void setAppName(String var1);

    public void setAppVersion(String var1);

    public void setClientId(String var1);

    public void setEncoding(String var1);

    public void setHostname(String var1);

    public void setLanguage(String var1);

    public void setLocation(String var1);

    public void setPage(String var1);

    public void setReferrer(String var1);

    public void setSampleRate(double var1);

    public void setScreenColors(String var1);

    public void setScreenName(String var1);

    public void setScreenResolution(int var1, int var2);

    public void setSessionTimeout(long var1);

    public void setTitle(String var1);

    public void setUseSecure(boolean var1);

    public void setViewportSize(String var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class a
    implements GoogleAnalytics.a {
        final /* synthetic */ Tracker BA;
        private boolean Bv;
        private int Bw;
        private long Bx;
        private boolean By;
        private long Bz;
        private ju yD;

        public a(Tracker var1);

        private void eW();

        public long eT();

        public boolean eU();

        public boolean eV();

        boolean eX();

        public void enableAutoActivityTracking(boolean var1);

        @Override
        public void i(Activity var1);

        @Override
        public void j(Activity var1);

        public void setSessionTimeout(long var1);
    }

}

