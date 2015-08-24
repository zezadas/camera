/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bl;
import com.google.android.gms.internal.bv;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bx;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.ca;
import com.google.android.gms.internal.cb;
import com.google.android.gms.internal.cc;
import com.google.android.gms.internal.cd;
import com.google.android.gms.internal.dg;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.k;
import com.google.android.gms.internal.l;
import com.google.android.gms.internal.t;
import com.google.android.gms.internal.v;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@ez
public class gw
extends WebViewClient {
    protected final gv md;
    private final Object mw = new Object();
    private cb pJ;
    private bz pL;
    private v pM;
    private bw pz;
    private a tg;
    private final HashMap<String, by> wP = new HashMap();
    private t wQ;
    private dn wR;
    private boolean wS = false;
    private boolean wT;
    private dq wU;
    private final dg wV;

    public gw(gv gv, boolean bl) {
        this(gv, bl, new dg(gv, gv.getContext(), new bl(gv.getContext())));
    }

    gw(gv gv, boolean bl, dg dg) {
        this.md = gv;
        this.wT = bl;
        this.wV = dg;
    }

    private static boolean d(Uri object) {
        if ("http".equalsIgnoreCase((String)(object = object.getScheme())) || "https".equalsIgnoreCase((String)object)) {
            return true;
        }
        return false;
    }

    private void e(Uri object) {
        Object object2 = object.getPath();
        by by = this.wP.get(object2);
        if (by != null) {
            object = gj.c((Uri)object);
            if (gs.u(2)) {
                gs.V("Received GMSG: " + (String)object2);
                for (String string : object.keySet()) {
                    gs.V("  " + string + ": " + (String)object.get(string));
                }
            }
            by.a(this.md, (Map<String, String>)object);
            return;
        }
        gs.V("No GMSG handler found for GMSG: " + object);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(dj dj) {
        dn dn = null;
        boolean bl = this.md.dy();
        t t = bl && !this.md.Y().og ? null : this.wQ;
        if (!bl) {
            dn = this.wR;
        }
        this.a(new dm(dj, t, dn, this.wU, this.md.dx()));
    }

    protected void a(dm dm) {
        dk.a(this.md.getContext(), dm);
    }

    public final void a(a a) {
        this.tg = a;
    }

    public void a(t t, dn dn, bw bw, dq dq, boolean bl, bz bz, cb cb, v v) {
        this.a(t, dn, bw, dq, bl, bz, v);
        this.a("/setInterstitialProperties", new ca(cb));
        this.pJ = cb;
    }

    public void a(t t, dn dn, bw bw, dq dq, boolean bl, bz bz, v v) {
        v v2 = v;
        if (v == null) {
            v2 = new v(false);
        }
        this.a("/appEvent", new bv(bw));
        this.a("/canOpenURLs", bx.pB);
        this.a("/click", bx.pC);
        this.a("/close", bx.pD);
        this.a("/customClose", bx.pE);
        this.a("/httpTrack", bx.pF);
        this.a("/log", bx.pG);
        this.a("/open", new cd(bz, v2));
        this.a("/touch", bx.pH);
        this.a("/video", bx.pI);
        this.a("/mraid", new cc());
        this.wQ = t;
        this.wR = dn;
        this.pz = bw;
        this.pL = bz;
        this.wU = dq;
        this.pM = v2;
        this.y(bl);
    }

    public final void a(String string, by by) {
        this.wP.put(string, by);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(boolean bl, int n) {
        t t = this.md.dy() && !this.md.Y().og ? null : this.wQ;
        this.a(new dm(t, this.wR, this.wU, this.md, bl, n, this.md.dx()));
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(boolean bl, int n, String string) {
        dn dn = null;
        boolean bl2 = this.md.dy();
        t t = bl2 && !this.md.Y().og ? null : this.wQ;
        if (!bl2) {
            dn = this.wR;
        }
        this.a(new dm(t, dn, this.pz, this.wU, this.md, bl, n, string, this.md.dx(), this.pL));
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(boolean bl, int n, String string, String string2) {
        boolean bl2 = this.md.dy();
        t t = bl2 && !this.md.Y().og ? null : this.wQ;
        dn dn = bl2 ? null : this.wR;
        this.a(new dm(t, dn, this.pz, this.wU, this.md, bl, n, string, string2, this.md.dx(), this.pL));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public final void bX() {
        Object object = this.mw;
        synchronized (object) {
            this.wS = false;
            this.wT = true;
            final dk dk = this.md.dt();
            if (dk != null) {
                if (!gr.ds()) {
                    gr.wC.post(new Runnable(){

                        @Override
                        public void run() {
                            dk.bX();
                        }
                    });
                } else {
                    dk.bX();
                }
            }
            return;
        }
    }

    public v dD() {
        return this.pM;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean dE() {
        Object object = this.mw;
        synchronized (object) {
            return this.wT;
        }
    }

    public void dF() {
        if (this.dE()) {
            this.wV.bP();
        }
    }

    @Override
    public final void onLoadResource(WebView object, String string) {
        gs.V("Loading resource: " + string);
        object = Uri.parse(string);
        if ("gmsg".equalsIgnoreCase(object.getScheme()) && "mobileads.google.com".equalsIgnoreCase(object.getHost())) {
            this.e((Uri)object);
        }
    }

    @Override
    public final void onPageFinished(WebView webView, String string) {
        if (this.tg != null) {
            this.tg.a(this.md);
            this.tg = null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public final void reset() {
        Object object = this.mw;
        synchronized (object) {
            this.wP.clear();
            this.wQ = null;
            this.wR = null;
            this.tg = null;
            this.pz = null;
            this.wS = false;
            this.wT = false;
            this.pL = null;
            this.wU = null;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public final boolean shouldOverrideUrlLoading(WebView object, String string) {
        gs.V("AdWebView shouldOverrideUrlLoading: " + string);
        Uri uri = Uri.parse(string);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            this.e(uri);
            return true;
        }
        if (this.wS && object == this.md && gw.d(uri)) {
            return super.shouldOverrideUrlLoading((WebView)object, string);
        }
        if (this.md.willNotDraw()) {
            gs.W("AdWebView unable to handle URL: " + string);
            return true;
        }
        try {
            k k = this.md.dw();
            object = uri;
            if (k != null) {
                object = uri;
                if (k.b(uri)) {
                    object = k.a(uri, this.md.getContext());
                }
            }
        }
        catch (l var1_2) {
            gs.W("Unable to append parameter to URL: " + string);
            object = uri;
        }
        if (this.pM == null || this.pM.av()) {
            this.a(new dj("android.intent.action.VIEW", object.toString(), null, null, null, null, null));
            return true;
        }
        this.pM.d(string);
        return true;
    }

    public final void y(boolean bl) {
        this.wS = bl;
    }

    public static interface a {
        public void a(gv var1);
    }

}

