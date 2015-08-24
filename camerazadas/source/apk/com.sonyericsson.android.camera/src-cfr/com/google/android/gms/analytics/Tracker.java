/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.analytics.ExceptionReporter;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.TrackerHandler;
import com.google.android.gms.analytics.ac;
import com.google.android.gms.analytics.ad;
import com.google.android.gms.analytics.ai;
import com.google.android.gms.analytics.aj;
import com.google.android.gms.analytics.g;
import com.google.android.gms.analytics.h;
import com.google.android.gms.analytics.t;
import com.google.android.gms.analytics.y;
import com.google.android.gms.analytics.z;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.jw;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

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
    private final Map<String, String> qM = new HashMap<String, String>();

    Tracker(String string, TrackerHandler trackerHandler, Context context) {
        this(string, trackerHandler, h.dQ(), ad.eQ(), g.dP(), new y("tracking"), context);
    }

    Tracker(String string, TrackerHandler trackerHandler, h h, ad ad, g g, ac ac, Context context) {
        this.Bm = trackerHandler;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        if (string != null) {
            this.qM.put("&tid", string);
        }
        this.qM.put("useSecure", "1");
        this.Bo = h;
        this.Bp = ad;
        this.Bq = g;
        this.qM.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
        this.Bn = ac;
        this.Bs = new a();
        this.enableAdvertisingIdCollection(false);
    }

    void a(ai object) {
        z.V("Loading Tracker config values.");
        this.Bt = object;
        if (this.Bt.eZ()) {
            object = this.Bt.fa();
            this.set("&tid", (String)object);
            z.V("[Tracker] trackingId loaded: " + (String)object);
        }
        if (this.Bt.fb()) {
            object = Double.toString(this.Bt.fc());
            this.set("&sf", (String)object);
            z.V("[Tracker] sample frequency loaded: " + (String)object);
        }
        if (this.Bt.fd()) {
            this.setSessionTimeout(this.Bt.getSessionTimeout());
            z.V("[Tracker] session timeout loaded: " + this.eT());
        }
        if (this.Bt.fe()) {
            this.enableAutoActivityTracking(this.Bt.ff());
            z.V("[Tracker] auto activity tracking loaded: " + this.eU());
        }
        if (this.Bt.fg()) {
            if (this.Bt.fh()) {
                this.set("&aip", "1");
                z.V("[Tracker] anonymize ip loaded: true");
            }
            z.V("[Tracker] anonymize ip loaded: false");
        }
        this.enableExceptionReporting(this.Bt.fi());
    }

    long eT() {
        return this.Bs.eT();
    }

    boolean eU() {
        return this.Bs.eU();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void enableAdvertisingIdCollection(boolean bl) {
        if (!bl) {
            this.qM.put("&ate", null);
            this.qM.put("&adid", null);
            return;
        } else {
            if (this.qM.containsKey("&ate")) {
                this.qM.remove("&ate");
            }
            if (!this.qM.containsKey("&adid")) return;
            {
                this.qM.remove("&adid");
                return;
            }
        }
    }

    public void enableAutoActivityTracking(boolean bl) {
        this.Bs.enableAutoActivityTracking(bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void enableExceptionReporting(boolean bl) {
        if (this.Br == bl) {
            return;
        }
        this.Br = bl;
        if (bl) {
            this.Bu = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), this.mContext);
            Thread.setDefaultUncaughtExceptionHandler(this.Bu);
            z.V("Uncaught exceptions will be reported to Google Analytics.");
            return;
        }
        if (this.Bu != null) {
            Thread.setDefaultUncaughtExceptionHandler(this.Bu.dY());
        } else {
            Thread.setDefaultUncaughtExceptionHandler(null);
        }
        z.V("Uncaught exceptions will not be reported to Google Analytics.");
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public String get(String string) {
        t.ep().a(t.a.zo);
        if (TextUtils.isEmpty((CharSequence)string)) {
            return null;
        }
        if (this.qM.containsKey(string)) {
            return this.qM.get(string);
        }
        if (string.equals("&ul")) {
            return aj.a(Locale.getDefault());
        }
        if (this.Bo != null && this.Bo.ac(string)) {
            return this.Bo.getValue(string);
        }
        if (this.Bp != null && this.Bp.ac(string)) {
            return this.Bp.getValue(string);
        }
        if (this.Bq == null) return null;
        if (!this.Bq.ac(string)) return null;
        return this.Bq.getValue(string);
    }

    public void send(Map<String, String> object) {
        String string;
        t.ep().a(t.a.zq);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.putAll(this.qM);
        if (object != null) {
            hashMap.putAll((Map<String, String>)object);
        }
        if (TextUtils.isEmpty((CharSequence)hashMap.get("&tid"))) {
            z.W(String.format("Missing tracking id (%s) parameter.", "&tid"));
        }
        object = string = (String)hashMap.get("&t");
        if (TextUtils.isEmpty((CharSequence)string)) {
            z.W(String.format("Missing hit type (%s) parameter.", "&t"));
            object = "";
        }
        if (this.Bs.eV()) {
            hashMap.put("&sc", "start");
        }
        if ("screenview".equals(object = object.toLowerCase()) || "pageview".equals(object) || "appview".equals(object) || TextUtils.isEmpty((CharSequence)object)) {
            int n;
            int n2 = n = Integer.parseInt(this.qM.get("&a")) + 1;
            if (n >= Integer.MAX_VALUE) {
                n2 = 1;
            }
            this.qM.put("&a", Integer.toString(n2));
        }
        if (!(object.equals("transaction") || object.equals("item") || this.Bn.eJ())) {
            z.W("Too many hits sent too quickly, rate limiting invoked.");
            return;
        }
        this.Bm.u(hashMap);
    }

    public void set(String string, String string2) {
        o.b(string, (Object)"Key should be non-null");
        t.ep().a(t.a.zp);
        this.qM.put(string, string2);
    }

    public void setAnonymizeIp(boolean bl) {
        this.set("&aip", aj.C(bl));
    }

    public void setAppId(String string) {
        this.set("&aid", string);
    }

    public void setAppInstallerId(String string) {
        this.set("&aiid", string);
    }

    public void setAppName(String string) {
        this.set("&an", string);
    }

    public void setAppVersion(String string) {
        this.set("&av", string);
    }

    public void setClientId(String string) {
        this.set("&cid", string);
    }

    public void setEncoding(String string) {
        this.set("&de", string);
    }

    public void setHostname(String string) {
        this.set("&dh", string);
    }

    public void setLanguage(String string) {
        this.set("&ul", string);
    }

    public void setLocation(String string) {
        this.set("&dl", string);
    }

    public void setPage(String string) {
        this.set("&dp", string);
    }

    public void setReferrer(String string) {
        this.set("&dr", string);
    }

    public void setSampleRate(double d) {
        this.set("&sf", Double.toHexString(d));
    }

    public void setScreenColors(String string) {
        this.set("&sd", string);
    }

    public void setScreenName(String string) {
        this.set("&cd", string);
    }

    public void setScreenResolution(int n, int n2) {
        if (n < 0 && n2 < 0) {
            z.W("Invalid width or height. The values should be non-negative.");
            return;
        }
        this.set("&sr", "" + n + "x" + n2);
    }

    public void setSessionTimeout(long l) {
        this.Bs.setSessionTimeout(1000 * l);
    }

    public void setTitle(String string) {
        this.set("&dt", string);
    }

    public void setUseSecure(boolean bl) {
        this.set("useSecure", aj.C(bl));
    }

    public void setViewportSize(String string) {
        this.set("&vp", string);
    }

    private class a
    implements GoogleAnalytics.a {
        private boolean Bv;
        private int Bw;
        private long Bx;
        private boolean By;
        private long Bz;
        private ju yD;

        public a() {
            this.Bv = false;
            this.Bw = 0;
            this.Bx = -1;
            this.By = false;
            this.yD = jw.hA();
        }

        private void eW() {
            GoogleAnalytics googleAnalytics = GoogleAnalytics.eD();
            if (googleAnalytics == null) {
                z.T("GoogleAnalytics isn't initialized for the Tracker!");
                return;
            }
            if (this.Bx >= 0 || this.Bv) {
                googleAnalytics.a(Tracker.this.Bs);
                return;
            }
            googleAnalytics.b(Tracker.this.Bs);
        }

        public long eT() {
            return this.Bx;
        }

        public boolean eU() {
            return this.Bv;
        }

        public boolean eV() {
            boolean bl = this.By;
            this.By = false;
            return bl;
        }

        boolean eX() {
            if (this.yD.elapsedRealtime() >= this.Bz + Math.max(1000, this.Bx)) {
                return true;
            }
            return false;
        }

        public void enableAutoActivityTracking(boolean bl) {
            this.Bv = bl;
            this.eW();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void i(Activity object) {
            t.ep().a(t.a.An);
            if (this.Bw == 0 && this.eX()) {
                this.By = true;
            }
            ++this.Bw;
            if (this.Bv) {
                HashMap<String, String> hashMap = new HashMap<String, String>();
                hashMap.put("&t", "screenview");
                t.ep().B(true);
                Tracker tracker = Tracker.this;
                object = Tracker.this.Bt != null ? Tracker.this.Bt.k((Activity)object) : object.getClass().getCanonicalName();
                tracker.set("&cd", (String)object);
                Tracker.this.send(hashMap);
                t.ep().B(false);
            }
        }

        @Override
        public void j(Activity activity) {
            t.ep().a(t.a.Ao);
            --this.Bw;
            this.Bw = Math.max(0, this.Bw);
            if (this.Bw == 0) {
                this.Bz = this.yD.elapsedRealtime();
            }
        }

        public void setSessionTimeout(long l) {
            this.Bx = l;
            this.eW();
        }
    }

}

