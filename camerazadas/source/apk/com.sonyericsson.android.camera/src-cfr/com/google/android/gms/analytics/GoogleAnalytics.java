/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.TrackerHandler;
import com.google.android.gms.analytics.ad;
import com.google.android.gms.analytics.ae;
import com.google.android.gms.analytics.ah;
import com.google.android.gms.analytics.ai;
import com.google.android.gms.analytics.aj;
import com.google.android.gms.analytics.f;
import com.google.android.gms.analytics.g;
import com.google.android.gms.analytics.h;
import com.google.android.gms.analytics.k;
import com.google.android.gms.analytics.q;
import com.google.android.gms.analytics.s;
import com.google.android.gms.analytics.t;
import com.google.android.gms.analytics.u;
import com.google.android.gms.analytics.v;
import com.google.android.gms.analytics.z;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class GoogleAnalytics
extends TrackerHandler {
    private static GoogleAnalytics AC;
    private static boolean Av;
    private Set<a> AA;
    private boolean AB = false;
    private boolean Aw;
    private ae Ax;
    private volatile Boolean Ay = false;
    private Logger Az;
    private Context mContext;
    private String xL;
    private String xM;
    private f ye;

    protected GoogleAnalytics(Context context) {
        this(context, s.B(context), q.dZ());
    }

    private GoogleAnalytics(Context context, f f, ae ae) {
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null");
        }
        this.mContext = context.getApplicationContext();
        this.ye = f;
        this.Ax = ae;
        g.y(this.mContext);
        ad.y(this.mContext);
        h.y(this.mContext);
        this.Az = new k();
        this.AA = new HashSet<a>();
        this.eE();
    }

    private Tracker a(Tracker tracker) {
        if (this.xL != null) {
            tracker.set("&an", this.xL);
        }
        if (this.xM != null) {
            tracker.set("&av", this.xM);
        }
        return tracker;
    }

    private int ai(String string) {
        if ("verbose".equals(string = string.toLowerCase())) {
            return 0;
        }
        if ("info".equals(string)) {
            return 1;
        }
        if ("warning".equals(string)) {
            return 2;
        }
        if ("error".equals(string)) {
            return 3;
        }
        return -1;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    static GoogleAnalytics eD() {
        synchronized (GoogleAnalytics.class) {
            return AC;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private void eE() {
        Object object;
        if (Av) {
            return;
        }
        try {
            object = this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 129);
        }
        catch (PackageManager.NameNotFoundException var2_2) {
            z.V("PackageManager doesn't know about package: " + var2_2);
            object = null;
        }
        if (object == null) {
            z.W("Couldn't get ApplicationInfo to load gloabl config.");
            return;
        }
        object = object.metaData;
        if (object == null) return;
        int n = object.getInt("com.google.android.gms.analytics.globalConfigResource");
        if (n <= 0) return;
        object = (v)new u(this.mContext).w(n);
        if (object == null) return;
        this.a((v)object);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static GoogleAnalytics getInstance(Context object) {
        synchronized (GoogleAnalytics.class) {
            if (AC != null) return AC;
            AC = new GoogleAnalytics((Context)object);
            return AC;
        }
    }

    void a(a a) {
        this.AA.add(a);
        if (this.mContext instanceof Application) {
            this.enableAutoActivityReports((Application)this.mContext);
        }
    }

    void a(v v) {
        int n;
        z.V("Loading global config values.");
        if (v.et()) {
            this.xL = v.eu();
            z.V("app name loaded: " + this.xL);
        }
        if (v.ev()) {
            this.xM = v.ew();
            z.V("app version loaded: " + this.xM);
        }
        if (v.ex() && (n = this.ai(v.ey())) >= 0) {
            z.V("log level loaded: " + n);
            this.getLogger().setLogLevel(n);
        }
        if (v.ez()) {
            this.Ax.setLocalDispatchPeriod(v.eA());
        }
        if (v.eB()) {
            this.setDryRun(v.eC());
        }
    }

    void b(a a) {
        this.AA.remove(a);
    }

    @Deprecated
    public void dispatchLocalHits() {
        this.Ax.dispatchLocalHits();
    }

    public void enableAutoActivityReports(Application application) {
        if (!(Build.VERSION.SDK_INT < 14 || this.AB)) {
            application.registerActivityLifecycleCallbacks(new b());
            this.AB = true;
        }
    }

    void g(Activity activity) {
        Iterator<a> iterator = this.AA.iterator();
        while (iterator.hasNext()) {
            iterator.next().i(activity);
        }
    }

    public boolean getAppOptOut() {
        t.ep().a(t.a.zW);
        return this.Ay;
    }

    public Logger getLogger() {
        return this.Az;
    }

    void h(Activity activity) {
        Iterator<a> iterator = this.AA.iterator();
        while (iterator.hasNext()) {
            iterator.next().j(activity);
        }
    }

    public boolean isDryRunEnabled() {
        t.ep().a(t.a.Ai);
        return this.Aw;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public Tracker newTracker(int n) {
        synchronized (this) {
            t.ep().a(t.a.zS);
            Tracker tracker = new Tracker(null, this, this.mContext);
            if (n <= 0) return this.a(tracker);
            ai ai = (ai)new ah(this.mContext).w(n);
            if (ai == null) return this.a(tracker);
            tracker.a(ai);
            return this.a(tracker);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public Tracker newTracker(String object) {
        synchronized (this) {
            t.ep().a(t.a.zS);
            return this.a(new Tracker((String)object, this, this.mContext));
        }
    }

    public void reportActivityStart(Activity activity) {
        if (!this.AB) {
            this.g(activity);
        }
    }

    public void reportActivityStop(Activity activity) {
        if (!this.AB) {
            this.h(activity);
        }
    }

    public void setAppOptOut(boolean bl) {
        t.ep().a(t.a.zV);
        this.Ay = bl;
        if (this.Ay.booleanValue()) {
            this.ye.dH();
        }
    }

    public void setDryRun(boolean bl) {
        t.ep().a(t.a.Ah);
        this.Aw = bl;
    }

    @Deprecated
    public void setLocalDispatchPeriod(int n) {
        this.Ax.setLocalDispatchPeriod(n);
    }

    public void setLogger(Logger logger) {
        t.ep().a(t.a.Aj);
        this.Az = logger;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    void u(Map<String, String> map) {
        synchronized (this) {
            if (map == null) {
                throw new IllegalArgumentException("hit cannot be null");
            }
            aj.a(map, "&ul", aj.a(Locale.getDefault()));
            aj.a(map, "&sr", ad.eQ());
            map.put("&_u", t.ep().er());
            t.ep().eq();
            this.ye.u(map);
            return;
        }
    }

    static interface a {
        public void i(Activity var1);

        public void j(Activity var1);
    }

    class b
    implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override
        public void onActivityDestroyed(Activity activity) {
        }

        @Override
        public void onActivityPaused(Activity activity) {
        }

        @Override
        public void onActivityResumed(Activity activity) {
        }

        @Override
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override
        public void onActivityStarted(Activity activity) {
            GoogleAnalytics.this.g(activity);
        }

        @Override
        public void onActivityStopped(Activity activity) {
            GoogleAnalytics.this.h(activity);
        }
    }

}

