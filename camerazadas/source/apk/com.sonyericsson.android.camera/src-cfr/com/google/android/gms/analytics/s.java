/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.a;
import com.google.android.gms.analytics.af;
import com.google.android.gms.analytics.aj;
import com.google.android.gms.analytics.f;
import com.google.android.gms.analytics.g;
import com.google.android.gms.analytics.h;
import com.google.android.gms.analytics.l;
import com.google.android.gms.analytics.r;
import com.google.android.gms.analytics.t;
import com.google.android.gms.analytics.x;
import com.google.android.gms.analytics.z;
import com.google.android.gms.internal.hb;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

class s
extends Thread
implements f {
    private static s yX;
    private volatile boolean mClosed = false;
    private final Context mContext;
    private final LinkedBlockingQueue<Runnable> yT = new LinkedBlockingQueue();
    private volatile boolean yU = false;
    private volatile List<hb> yV;
    private volatile String yW;
    private volatile af yY;

    /*
     * Enabled aggressive block sorting
     */
    private s(Context context) {
        super("GAThread");
        this.mContext = context != null ? context.getApplicationContext() : context;
        this.start();
    }

    static s B(Context context) {
        if (yX == null) {
            yX = new s(context);
        }
        return yX;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    static String C(Context context) {
        try {
            Object object = context.openFileInput("gaInstallData");
            byte[] arrby = new byte[8192];
            int n = object.read(arrby, 0, 8192);
            if (object.available() > 0) {
                z.T("Too much campaign data, ignoring it.");
                object.close();
                context.deleteFile("gaInstallData");
                return null;
            }
            object.close();
            context.deleteFile("gaInstallData");
            if (n <= 0) {
                z.W("Campaign file is empty.");
                return null;
            }
            object = new String(arrby, 0, n);
            z.U("Campaign found: " + (String)object);
            return object;
        }
        catch (FileNotFoundException var0_1) {
            z.U("No campaign data found.");
            return null;
        }
        catch (IOException var2_3) {
            z.T("Error reading campaign data.");
            context.deleteFile("gaInstallData");
            return null;
        }
    }

    static int ah(String string) {
        int n = 1;
        if (!TextUtils.isEmpty((CharSequence)string)) {
            int n2 = string.length();
            int n3 = 0;
            --n2;
            do {
                n = n3;
                if (n2 < 0) break;
                n = string.charAt(n2);
                n = (n3 << 6 & 268435455) + n + (n << 14);
                int n4 = 266338304 & n;
                n3 = n;
                if (n4 != 0) {
                    n3 = n ^ n4 >> 21;
                }
                --n2;
            } while (true);
        }
        return n;
    }

    private String g(Throwable throwable) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        throwable.printStackTrace(printStream);
        printStream.flush();
        return new String(byteArrayOutputStream.toByteArray());
    }

    private String v(Map<String, String> map) {
        if (map.containsKey("useSecure")) {
            if (aj.e(map.get("useSecure"), true)) {
                return "https:";
            }
            return "http:";
        }
        return "https:";
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean w(Map<String, String> object) {
        if (object.get("&sf") == null) {
            return false;
        }
        double d = aj.a((String)object.get("&sf"), 100.0);
        if (d >= 100.0) {
            return false;
        }
        if ((double)(s.ah((String)object.get("&cid")) % 10000) < d * 100.0) {
            return false;
        }
        object = object.get("&t") == null ? "unknown" : (String)object.get("&t");
        z.V(String.format("%s hit sampled out", object));
        return true;
    }

    private void x(Map<String, String> map) {
        l l = a.w(this.mContext);
        aj.a(map, "&adid", l);
        aj.a(map, "&ate", l);
    }

    private void y(Map<String, String> map) {
        g g = g.dP();
        aj.a(map, "&an", g);
        aj.a(map, "&av", g);
        aj.a(map, "&aid", g);
        aj.a(map, "&aiid", g);
        map.put("&v", "1");
    }

    void b(Runnable runnable) {
        this.yT.add(runnable);
    }

    @Override
    public void dH() {
        this.b(new Runnable(){

            @Override
            public void run() {
                s.this.yY.dH();
            }
        });
    }

    @Override
    public void dN() {
        this.b(new Runnable(){

            @Override
            public void run() {
                s.this.yY.dN();
            }
        });
    }

    @Override
    public LinkedBlockingQueue<Runnable> dO() {
        return this.yT;
    }

    @Override
    public void dispatch() {
        this.b(new Runnable(){

            @Override
            public void run() {
                s.this.yY.dispatch();
            }
        });
    }

    @Override
    public Thread getThread() {
        return this;
    }

    protected void init() {
        this.yY.eg();
        this.yV = new ArrayList<hb>();
        this.yV.add(new hb("appendVersion", "&_v".substring(1), "ma4.0.3"));
        this.yV.add(new hb("appendQueueTime", "&qt".substring(1), null));
        this.yV.add(new hb("appendCacheBuster", "&z".substring(1), null));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void run() {
        Process.setThreadPriority(10);
        try {
            Thread.sleep(5000);
        }
        catch (InterruptedException var1_1) {
            z.W("sleep interrupted in GAThread initialize");
        }
        try {
            if (this.yY == null) {
                this.yY = new r(this.mContext, this);
            }
            this.init();
            this.yW = s.C(this.mContext);
            z.V("Initialized GA Thread");
        }
        catch (Throwable var1_5) {
            z.T("Error initializing the GAThread: " + this.g(var1_5));
            z.T("Google Analytics will not start up.");
            this.yU = true;
        }
        while (!this.mClosed) {
            try {
                try {
                    Runnable runnable = this.yT.take();
                    if (this.yU) continue;
                    runnable.run();
                }
                catch (InterruptedException var1_3) {
                    z.U(var1_3.toString());
                }
                continue;
            }
            catch (Throwable var1_4) {
                z.T("Error on GAThread: " + this.g(var1_4));
                z.T("Google Analytics is shutting down.");
                this.yU = true;
                continue;
            }
            break;
        }
        return;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void u(Map<String, String> object) {
        String string;
        final HashMap<String, String> hashMap = new HashMap<String, String>((Map<String, String>)object);
        object = string = (String)object.get("&ht");
        if (string != null) {
            try {
                Long.valueOf(string);
                object = string;
            }
            catch (NumberFormatException var1_2) {
                object = null;
            }
        }
        if (object == null) {
            hashMap.put("&ht", Long.toString(System.currentTimeMillis()));
        }
        this.b(new Runnable(){

            @Override
            public void run() {
                s.this.x(hashMap);
                if (TextUtils.isEmpty((CharSequence)hashMap.get("&cid"))) {
                    hashMap.put("&cid", h.dQ().getValue("&cid"));
                }
                if (GoogleAnalytics.getInstance(s.this.mContext).getAppOptOut() || s.this.w(hashMap)) {
                    return;
                }
                if (!TextUtils.isEmpty((CharSequence)s.this.yW)) {
                    t.ep().B(true);
                    hashMap.putAll(new HitBuilders.HitBuilder().setCampaignParamsFromUrl(s.this.yW).build());
                    t.ep().B(false);
                    s.this.yW = null;
                }
                s.this.y(hashMap);
                Map<String, String> map = x.z(hashMap);
                s.this.yY.b(map, Long.valueOf((String)hashMap.get("&ht")), s.this.v(hashMap), s.this.yV);
            }
        });
    }

}

