/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.TrackerHandler;
import com.google.android.gms.analytics.ae;
import com.google.android.gms.analytics.f;
import com.google.android.gms.analytics.v;
import java.util.Map;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 */
public class GoogleAnalytics
extends TrackerHandler {
    private static GoogleAnalytics AC;
    private static boolean Av;
    private Set<a> AA;
    private boolean AB;
    private boolean Aw;
    private ae Ax;
    private volatile Boolean Ay;
    private Logger Az;
    private Context mContext;
    private String xL;
    private String xM;
    private f ye;

    protected GoogleAnalytics(Context var1);

    private GoogleAnalytics(Context var1, f var2, ae var3);

    private Tracker a(Tracker var1);

    private int ai(String var1);

    static GoogleAnalytics eD();

    private void eE();

    public static GoogleAnalytics getInstance(Context var0);

    void a(a var1);

    void a(v var1);

    void b(a var1);

    @Deprecated
    public void dispatchLocalHits();

    public void enableAutoActivityReports(Application var1);

    void g(Activity var1);

    public boolean getAppOptOut();

    public Logger getLogger();

    void h(Activity var1);

    public boolean isDryRunEnabled();

    public Tracker newTracker(int var1);

    public Tracker newTracker(String var1);

    public void reportActivityStart(Activity var1);

    public void reportActivityStop(Activity var1);

    public void setAppOptOut(boolean var1);

    public void setDryRun(boolean var1);

    @Deprecated
    public void setLocalDispatchPeriod(int var1);

    public void setLogger(Logger var1);

    @Override
    void u(Map<String, String> var1);

    static interface a {
        public void i(Activity var1);

        public void j(Activity var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class b
    implements Application.ActivityLifecycleCallbacks {
        final /* synthetic */ GoogleAnalytics AD;

        b(GoogleAnalytics var1);

        @Override
        public void onActivityCreated(Activity var1, Bundle var2);

        @Override
        public void onActivityDestroyed(Activity var1);

        @Override
        public void onActivityPaused(Activity var1);

        @Override
        public void onActivityResumed(Activity var1);

        @Override
        public void onActivitySaveInstanceState(Activity var1, Bundle var2);

        @Override
        public void onActivityStarted(Activity var1);

        @Override
        public void onActivityStopped(Activity var1);
    }

}

