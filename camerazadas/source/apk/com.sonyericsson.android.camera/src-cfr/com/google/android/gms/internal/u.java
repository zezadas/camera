/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ViewSwitcher;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.aa;
import com.google.android.gms.internal.ab;
import com.google.android.gms.internal.ac;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.an;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bc;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.bp;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.br;
import com.google.android.gms.internal.bs;
import com.google.android.gms.internal.bt;
import com.google.android.gms.internal.bu;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.cb;
import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.cn;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.ct;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.dv;
import com.google.android.gms.internal.dx;
import com.google.android.gms.internal.dy;
import com.google.android.gms.internal.dz;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.eh;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.et;
import com.google.android.gms.internal.eu;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fa;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.ga;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gd;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gm;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.k;
import com.google.android.gms.internal.t;
import com.google.android.gms.internal.v;
import com.google.android.gms.internal.w;
import com.google.android.gms.internal.x;
import com.google.android.gms.internal.z;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONObject;

@ez
public class u
extends bd.a
implements aa,
bw,
bz,
cb,
cn,
dn,
dq,
fa.a,
fd.a,
gd,
t {
    private av lp;
    private final ct lq;
    private final b lr;
    private final ab ls;
    private final ae lt;
    private boolean lu;
    private final ComponentCallbacks lv;

    public u(Context context, ay ay, String string, ct ct, gt gt) {
        this(new b(context, ay, string, gt), ct, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    u(b b, ct ct, ab ab) {
        this.lv = new ComponentCallbacks(){

            @Override
            public void onConfigurationChanged(Configuration configuration) {
                if (u.this.lr != null && u.a((u)u.this).lI != null && u.a((u)u.this).lI.rN != null) {
                    u.a((u)u.this).lI.rN.bS();
                }
            }

            @Override
            public void onLowMemory() {
            }
        };
        this.lr = b;
        this.lq = ct;
        if (ab == null) {
            ab = new ab(this);
        }
        this.ls = ab;
        this.lt = new ae();
        gj.q(this.lr.lB);
        gb.a(this.lr.lB, this.lr.lD);
        this.Z();
    }

    private void Z() {
        if (Build.VERSION.SDK_INT >= 14 && this.lr != null && this.lr.lB != null) {
            this.lr.lB.registerComponentCallbacks(this.lv);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private fi.a a(av av, Bundle bundle) {
        String string;
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo = this.lr.lB.getApplicationInfo();
        try {
            packageInfo = this.lr.lB.getPackageManager().getPackageInfo(applicationInfo.packageName, 0);
        }
        catch (PackageManager.NameNotFoundException var9_5) {
            packageInfo = null;
        }
        Object object = string = null;
        if (!this.lr.lH.og) {
            object = string;
            if (this.lr.lz.getParent() != null) {
                int n;
                object = new int[2];
                this.lr.lz.getLocationOnScreen((int[])object);
                Object object2 = object[0];
                Object object3 = object[1];
                object = this.lr.lB.getResources().getDisplayMetrics();
                int n2 = this.lr.lz.getWidth();
                int n3 = this.lr.lz.getHeight();
                int n4 = n = 0;
                if (this.lr.lz.isShown()) {
                    n4 = n;
                    if (object2 + n2 > 0) {
                        n4 = n;
                        if (object3 + n3 > 0) {
                            n4 = n;
                            if (object2 <= object.widthPixels) {
                                n4 = n;
                                if (object3 <= object.heightPixels) {
                                    n4 = 1;
                                }
                            }
                        }
                    }
                }
                object = new Bundle(5);
                object.putInt("x", (int)object2);
                object.putInt("y", (int)object3);
                object.putInt("width", n2);
                object.putInt("height", n3);
                object.putInt("visible", n4);
            }
        }
        string = gb.cW();
        this.lr.lK = new ga(string, this.lr.lA);
        this.lr.lK.e(av);
        Bundle bundle2 = gb.a(this.lr.lB, this, string);
        return new fi.a((Bundle)object, av, this.lr.lH, this.lr.lA, applicationInfo, packageInfo, string, gb.vK, this.lr.lD, bundle2, this.lr.lS, bundle, gb.dc());
    }

    /*
     * Enabled aggressive block sorting
     */
    private gv a(v v) {
        if (this.lr.lH.og) {
            gv gv = gv.a(this.lr.lB, this.lr.lH, false, false, this.lr.lC, this.lr.lD);
            gv.du().a(this, null, this, this, true, this, this, v);
            return gv;
        }
        View view = this.lr.lz.getNextView();
        if (view instanceof gv) {
            view = (gv)view;
            view.a(this.lr.lB, this.lr.lH);
        } else {
            gv gv;
            if (view != null) {
                this.lr.lz.removeView(view);
            }
            view = gv = gv.a(this.lr.lB, this.lr.lH, false, false, this.lr.lC, this.lr.lD);
            if (this.lr.lH.oh == null) {
                this.c(gv);
                view = gv;
            }
        }
        view.du().a(this, this, this, this, false, this, v);
        return view;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void a(int n) {
        gs.W("Failed to load ad: " + n);
        if (this.lr.lE == null) return;
        try {
            this.lr.lE.onAdFailedToLoad(n);
            return;
        }
        catch (RemoteException var2_2) {
            gs.d("Could not call AdListener.onAdFailedToLoad().", var2_2);
            return;
        }
    }

    private void aa() {
        if (Build.VERSION.SDK_INT >= 14 && this.lr != null && this.lr.lB != null) {
            this.lr.lB.unregisterComponentCallbacks(this.lv);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void ak() {
        gs.U("Ad closing.");
        if (this.lr.lE == null) return;
        try {
            this.lr.lE.onAdClosed();
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not call AdListener.onAdClosed().", var1_1);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void al() {
        gs.U("Ad leaving application.");
        if (this.lr.lE == null) return;
        try {
            this.lr.lE.onAdLeftApplication();
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not call AdListener.onAdLeftApplication().", var1_1);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void am() {
        gs.U("Ad opening.");
        if (this.lr.lE == null) return;
        try {
            this.lr.lE.onAdOpened();
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not call AdListener.onAdOpened().", var1_1);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void an() {
        gs.U("Ad finished loading.");
        if (this.lr.lE == null) return;
        try {
            this.lr.lE.onAdLoaded();
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not call AdListener.onAdLoaded().", var1_1);
            return;
        }
    }

    private void ao() {
        try {
            if (this.lr.lI.vu instanceof bo && this.lr.lQ != null) {
                this.lr.lQ.a((bo)this.lr.lI.vu);
            }
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", var1_1);
            return;
        }
    }

    private void ap() {
        try {
            if (this.lr.lI.vu instanceof bp && this.lr.lR != null) {
                this.lr.lR.a((bp)this.lr.lI.vu);
            }
            return;
        }
        catch (RemoteException var1_1) {
            gs.d("Could not call OnContentAdLoadedListener.onContentAdLoaded().", var1_1);
            return;
        }
    }

    private void at() {
        if (this.lr.lI != null) {
            if (this.lr.lW == 0) {
                this.lr.lI.rN.destroy();
            }
            this.lr.lI = null;
            this.lr.lX = false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private boolean b(fz object) {
        if (object.tI) {
            try {
                object = (View)e.f(object.qz.getView());
            }
            catch (RemoteException var1_2) {
                gs.d("Could not get View from mediation adapter.", var1_2);
                return false;
            }
            View view = this.lr.lz.getNextView();
            if (view != null) {
                this.lr.lz.removeView(view);
            }
            try {
                this.c((View)object);
            }
            catch (Throwable var1_3) {
                gs.d("Could not add mediation view to view hierarchy.", var1_3);
                return false;
            }
        } else if (object.vr != null) {
            object.rN.a(object.vr);
            this.lr.lz.removeAllViews();
            this.lr.lz.setMinimumWidth(object.vr.widthPixels);
            this.lr.lz.setMinimumHeight(object.vr.heightPixels);
            this.c(object.rN);
        }
        if (this.lr.lz.getChildCount() > 1) {
            this.lr.lz.showNext();
        }
        if (this.lr.lI != null) {
            object = this.lr.lz.getNextView();
            if (object instanceof gv) {
                ((gv)object).a(this.lr.lB, this.lr.lH);
            } else if (object != null) {
                this.lr.lz.removeView((View)object);
            }
            if (this.lr.lI.qz != null) {
                try {
                    this.lr.lI.qz.destroy();
                }
                catch (RemoteException var1_4) {
                    gs.W("Could not destroy previous mediation adapter.");
                }
            }
        }
        this.lr.lz.setVisibility(0);
        return true;
    }

    private void c(View view) {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        this.lr.lz.addView(view, layoutParams);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void c(boolean bl) {
        if (this.lr.lI == null) {
            gs.W("Ad state was null when trying to ping impression URLs.");
            return;
        } else {
            gs.S("Pinging Impression URLs.");
            this.lr.lK.cO();
            if (this.lr.lI.qg != null) {
                gj.a(this.lr.lB, this.lr.lD.wD, this.lr.lI.qg);
            }
            if (this.lr.lI.vq != null && this.lr.lI.vq.qg != null) {
                cr.a(this.lr.lB, this.lr.lD.wD, this.lr.lI, this.lr.lA, bl, this.lr.lI.vq.qg);
            }
            if (this.lr.lI.qy == null || this.lr.lI.qy.qb == null) return;
            {
                cr.a(this.lr.lB, this.lr.lD.wD, this.lr.lI, this.lr.lA, bl, this.lr.lI.qy.qb);
                return;
            }
        }
    }

    @Override
    public d X() {
        o.aT("getAdFrame must be called on the main UI thread.");
        return e.k(this.lr.lz);
    }

    @Override
    public ay Y() {
        o.aT("getAdSize must be called on the main UI thread.");
        return this.lr.lH;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    Bundle a(an object) {
        Object object2;
        if (object == null) {
            return null;
        }
        if (object.aZ()) {
            object.wakeup();
        }
        if ((object2 = object.aX()) == null) return null;
        object = object2.aO();
        gs.S("In AdManger: loadAd, " + object2.toString());
        if (object == null) return null;
        object2 = new Bundle(1);
        object2.putString("fingerprint", (String)object);
        return object2;
    }

    @Override
    public void a(ay ay) {
        o.aT("setAdSize must be called on the main UI thread.");
        this.lr.lH = ay;
        if (this.lr.lI != null && this.lr.lW == 0) {
            this.lr.lI.rN.a(ay);
        }
        if (this.lr.lz.getChildCount() > 1) {
            this.lr.lz.removeView(this.lr.lz.getNextView());
        }
        this.lr.lz.setMinimumWidth(ay.widthPixels);
        this.lr.lz.setMinimumHeight(ay.heightPixels);
        this.lr.lz.requestLayout();
    }

    @Override
    public void a(bc bc) {
        o.aT("setAdListener must be called on the main UI thread.");
        this.lr.lE = bc;
    }

    @Override
    public void a(bf bf) {
        o.aT("setAppEventListener must be called on the main UI thread.");
        this.lr.lL = bf;
    }

    @Override
    public void a(eh eh) {
        o.aT("setInAppPurchaseListener must be called on the main UI thread.");
        this.lr.lN = eh;
    }

    @Override
    public void a(el el, String string) {
        o.aT("setPlayStorePurchaseParams must be called on the main UI thread.");
        this.lr.lT = new ee(string);
        this.lr.lM = el;
        if (!(gb.da() || el == null)) {
            new dx(this.lr.lB, this.lr.lM, this.lr.lT).start();
        }
    }

    @Override
    public void a(et et) {
        o.aT("setRawHtmlPublisherAdViewListener must be called on the main UI thread.");
        this.lr.lO = et;
    }

    @Override
    public void a(eu eu) {
        o.aT("setRawHtmlPublisherInterstitialAdListener must be called on the main UI thread.");
        this.lr.lP = eu;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void a(fz.a a) {
        Object object;
        gv gv;
        String string = null;
        this.lr.lF = null;
        this.lr.lJ = a;
        this.a((List<String>)null);
        if (!a.vw.tS) {
            object = new v();
            gv = this.a((v)object);
            object.a(new v.b(a, gv));
            gv.setOnTouchListener(new View.OnTouchListener((v)object){
                final /* synthetic */ v lx;

                @Override
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    this.lx.ar();
                    return false;
                }
            });
            gv.setOnClickListener(new View.OnClickListener((v)object){
                final /* synthetic */ v lx;

                @Override
                public void onClick(View view) {
                    this.lx.ar();
                }
            });
        } else {
            gv = null;
        }
        if (a.lH != null) {
            this.lr.lH = a.lH;
        }
        if (a.errorCode != -2) {
            this.a(new fz(a, gv, null, null, null, null, null));
            return;
        }
        if (!a.vw.tI && a.vw.tR) {
            if (a.vw.rP != null) {
                string = Uri.parse(a.vw.rP).buildUpon().query(null).build().toString();
            }
            object = new er(this, string, a.vw.tG);
            try {
                if (this.lr.lO != null && !this.lr.lH.og && this.lr.lO.e(string, a.vw.tG)) {
                    this.lr.lW = 1;
                    this.lr.lO.a((es)object);
                    return;
                }
            }
            catch (RemoteException var5_6) {
                gs.d("Could not call the rawHtmlPublisherAdViewListener.", var5_6);
            }
            try {
                if (this.lr.lP != null && this.lr.lH.og && this.lr.lP.e(string, a.vw.tG)) {
                    this.lr.lW = 1;
                    this.lr.lP.a((es)object);
                    return;
                }
            }
            catch (RemoteException var3_3) {
                gs.d("Could not call the RawHtmlPublisherInterstitialAdListener.", var3_3);
            }
        }
        this.lr.lW = 0;
        this.lr.lG = fd.a(this.lr.lB, this, a, gv, this.lq, this);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void a(fz var1_1) {
        this.lr.lG = null;
        var4_2 = var1_1.vu != null;
        if (var1_1.errorCode != -2 && var1_1.errorCode != 3) {
            gb.b(this.lr.au());
        }
        if (var1_1.errorCode == -1) {
            return;
        }
        if (this.a((fz)var1_1, var4_2)) {
            gs.S("Ad refresh scheduled.");
        }
        if (var1_1.errorCode == 3 && var1_1.vq != null && var1_1.vq.qh != null) {
            gs.S("Pinging no fill URLs.");
            cr.a(this.lr.lB, this.lr.lD.wD, (fz)var1_1, this.lr.lA, false, var1_1.vq.qh);
        }
        if (var1_1.errorCode != -2) {
            this.a(var1_1.errorCode);
            return;
        }
        if (!(this.lr.lH.og || var4_2 || this.lr.lW != 0)) {
            if (!this.b((fz)var1_1)) {
                this.a(0);
                return;
            }
            if (this.lr.lz != null) {
                a.a(this.lr.lz).Q(var1_1.tN);
            }
        }
        if (this.lr.lI != null && this.lr.lI.qB != null) {
            this.lr.lI.qB.a((cn)null);
        }
        if (var1_1.qB != null) {
            var1_1.qB.a(this);
        }
        this.lt.d(this.lr.lI);
        this.lr.lI = var1_1;
        this.lr.lK.j(var1_1.vs);
        this.lr.lK.k(var1_1.vt);
        this.lr.lK.t(this.lr.lH.og);
        this.lr.lK.u(var1_1.tI);
        if (!(this.lr.lH.og || var4_2 || this.lr.lW != 0)) {
            this.c(false);
        }
        if (this.lr.lU == null) {
            this.lr.lU = new ge(this.lr.lA);
        }
        if (var1_1.vq != null) {
            var3_3 = var1_1.vq.qk;
            var2_4 = var1_1.vq.ql;
        } else {
            var2_4 = 0;
            var3_3 = 0;
        }
        this.lr.lU.d(var3_3, var2_4);
        if (this.lr.lW != 0) {
            if (this.lr.lV == null) return;
            if (var1_1.vp == null) return;
            this.lt.a(this.lr.lB, this.lr.lH, this.lr.lI, this.lr.lV, this.lr.lD);
            return;
        }
        if (!this.lr.lH.og && var1_1.rN != null && (var1_1.rN.du().dE() || var1_1.vp != null)) {
            var5_5 = this.lt.a(this.lr.lH, this.lr.lI);
            if (var1_1.rN.du().dE() && var5_5 != null) {
                var5_5.a(new z(var1_1.rN));
            }
        }
        if (this.lr.lI.rN != null) {
            this.lr.lI.rN.bS();
            this.lr.lI.rN.du().dF();
        }
        if (var4_2) {
            var1_1 = var1_1.vu;
            if (var1_1 instanceof bp && this.lr.lR != null) {
                this.ap();
            } else if (var1_1 instanceof bo && this.lr.lQ != null) {
                this.ao();
            } else {
                ** GOTO lbl63
            }
        }
        this.an();
        return;
lbl63: // 2 sources:
        gs.W("No matching listener for retrieved native ad template.");
        this.a(0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    public void a(String string, ArrayList<String> object) {
        object = new dy(string, (ArrayList<String>)object, this.lr.lB, this.lr.lD.wD);
        if (this.lr.lN == null) {
            gs.W("InAppPurchaseListener is not set. Try to launch default purchase flow.");
            if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.lr.lB) != 0) {
                gs.W("Google Play Service unavailable, cannot launch default purchase flow.");
                return;
            }
            if (this.lr.lM == null) {
                gs.W("PlayStorePurchaseListener is not set.");
                return;
            }
            if (this.lr.lT == null) {
                gs.W("PlayStorePurchaseVerifier is not initialized.");
                return;
            }
            try {
                boolean bl = this.lr.lM.isValidPurchase(string);
                if (!bl) return;
            }
            catch (RemoteException var1_2) {
                gs.W("Could not start In-App purchase.");
            }
            dz.a(this.lr.lB, this.lr.lD.wG, new dv((eg)object, this.lr.lM, this.lr.lT, this.lr.lB));
            return;
        }
        try {
            this.lr.lN.a((eg)object);
            return;
        }
        catch (RemoteException var1_3) {
            gs.W("Could not start In-App purchase.");
            return;
        }
    }

    @Override
    public void a(HashSet<ga> hashSet) {
        this.lr.a(hashSet);
    }

    public void a(List<String> list) {
        o.aT("setNativeTemplates must be called on the main UI thread.");
        this.lr.lS = list;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean a(av object) {
        o.aT("loadAd must be called on the main UI thread.");
        if (this.lr.lF != null || this.lr.lG != null) {
            if (this.lp != null) {
                gs.W("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
            }
            this.lp = object;
            return false;
        } else {
            if (this.lr.lH.og && this.lr.lI != null) {
                gs.W("An interstitial is already loading. Aborting.");
                return false;
            }
            if (!this.aq()) return false;
            {
                gs.U("Starting ad request.");
                if (!object.nW) {
                    gs.U("Use AdRequest.Builder.addTestDevice(\"" + gr.v(this.lr.lB) + "\") to get test ads on this device.");
                }
                Bundle bundle = this.a(gb.cU().l(this.lr.lB));
                this.ls.cancel();
                this.lr.lW = 0;
                object = this.a((av)object, bundle);
                this.lr.lF = fa.a(this.lr.lB, (fi.a)object, this.lr.lC, this);
                return true;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean a(fz fz, boolean bl) {
        av av;
        boolean bl2 = false;
        if (this.lp != null) {
            av = this.lp;
            this.lp = null;
        } else {
            av av2;
            av = av2 = fz.tx;
            if (av2.extras != null) {
                bl2 = av2.extras.getBoolean("_noRefresh", false);
                av = av2;
            }
        }
        if (this.lr.lH.og) {
            if (this.lr.lW != 0) return this.ls.ay();
            gj.a(fz.rN);
            return this.ls.ay();
        }
        if (bl2 | bl) return this.ls.ay();
        if (this.lr.lW != 0) return this.ls.ay();
        if (fz.qj > 0) {
            this.ls.a(av, fz.qj);
            return this.ls.ay();
        }
        if (fz.vq != null && fz.vq.qj > 0) {
            this.ls.a(av, fz.vq.qj);
            return this.ls.ay();
        }
        if (fz.tI) return this.ls.ay();
        if (fz.errorCode != 2) return this.ls.ay();
        this.ls.c(av);
        return this.ls.ay();
    }

    @Override
    public void ab() {
        this.al();
    }

    @Override
    public void ac() {
        this.lt.d(this.lr.lI);
        if (this.lr.lH.og) {
            this.at();
        }
        this.lu = false;
        this.ak();
        this.lr.lK.cQ();
    }

    @Override
    public void ad() {
        if (this.lr.lH.og) {
            this.c(false);
        }
        this.lu = true;
        this.am();
    }

    @Override
    public void ae() {
        this.onAdClicked();
    }

    @Override
    public void af() {
        this.ac();
    }

    @Override
    public void ag() {
        this.ab();
    }

    @Override
    public void ah() {
        this.ad();
    }

    @Override
    public void ai() {
        if (this.lr.lI != null) {
            gs.W("Mediation adapter " + this.lr.lI.qA + " refreshed, but mediation adapters should never refresh.");
        }
        this.c(true);
        this.an();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void aj() {
        o.aT("recordManualImpression must be called on the main UI thread.");
        if (this.lr.lI == null) {
            gs.W("Ad state was null when trying to ping manual tracking URLs.");
            return;
        } else {
            gs.S("Pinging manual tracking URLs.");
            if (this.lr.lI.tK == null) return;
            {
                gj.a(this.lr.lB, this.lr.lD.wD, this.lr.lI.tK);
                return;
            }
        }
    }

    public boolean aq() {
        boolean bl = true;
        if (!gj.a(this.lr.lB.getPackageManager(), this.lr.lB.getPackageName(), "android.permission.INTERNET")) {
            if (!this.lr.lH.og) {
                gr.a(this.lr.lz, this.lr.lH, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            }
            bl = false;
        }
        if (!gj.p(this.lr.lB)) {
            if (!this.lr.lH.og) {
                gr.a(this.lr.lz, this.lr.lH, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            }
            bl = false;
        }
        if (!(bl || this.lr.lH.og)) {
            this.lr.lz.setVisibility(0);
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void ar() {
        if (this.lr.lI == null) {
            gs.W("Ad state was null when trying to ping click URLs.");
            return;
        } else {
            gs.S("Pinging click URLs.");
            this.lr.lK.cP();
            if (this.lr.lI.qf != null) {
                gj.a(this.lr.lB, this.lr.lD.wD, this.lr.lI.qf);
            }
            if (this.lr.lI.vq == null || this.lr.lI.vq.qf == null) return;
            {
                cr.a(this.lr.lB, this.lr.lD.wD, this.lr.lI, this.lr.lA, false, this.lr.lI.vq.qf);
                return;
            }
        }
    }

    @Override
    public void as() {
        this.c(false);
    }

    @Override
    public void b(View view) {
        this.lr.lV = view;
        this.a(new fz(this.lr.lJ, null, null, null, null, null, null));
    }

    public void b(av av) {
        ViewParent viewParent = this.lr.lz.getParent();
        if (viewParent instanceof View && ((View)viewParent).isShown() && gj.dk() && !this.lu) {
            this.a(av);
            return;
        }
        gs.U("Ad is not visible. Not refreshing ad.");
        this.ls.c(av);
    }

    @Override
    public void b(boolean bl) {
        this.lr.lX = bl;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void destroy() {
        o.aT("destroy must be called on the main UI thread.");
        this.aa();
        this.lr.lE = null;
        this.lr.lL = null;
        this.lr.lM = null;
        this.lr.lN = null;
        this.lr.lO = null;
        this.lr.lP = null;
        this.ls.cancel();
        this.lt.stop();
        this.stopLoading();
        if (this.lr.lz != null) {
            this.lr.lz.removeAllViews();
        }
        if (this.lr.lI != null && this.lr.lI.rN != null) {
            this.lr.lI.rN.destroy();
        }
        if (this.lr.lI == null || this.lr.lI.qz == null) return;
        try {
            this.lr.lI.qz.destroy();
            return;
        }
        catch (RemoteException var1_1) {
            gs.W("Could not destroy mediation adapter.");
            return;
        }
    }

    @Override
    public String getMediationAdapterClassName() {
        if (this.lr.lI != null) {
            return this.lr.lI.qA;
        }
        return null;
    }

    @Override
    public boolean isReady() {
        o.aT("isLoaded must be called on the main UI thread.");
        if (this.lr.lF == null && this.lr.lG == null && this.lr.lI != null) {
            return true;
        }
        return false;
    }

    @Override
    public void onAdClicked() {
        this.ar();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void onAppEvent(String string, String string2) {
        if (this.lr.lL == null) return;
        try {
            this.lr.lL.onAppEvent(string, string2);
            return;
        }
        catch (RemoteException var1_2) {
            gs.d("Could not call the AppEventListener.", var1_2);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void pause() {
        o.aT("pause must be called on the main UI thread.");
        if (this.lr.lI != null && this.lr.lW == 0) {
            gj.a(this.lr.lI.rN);
        }
        if (this.lr.lI != null && this.lr.lI.qz != null) {
            try {
                this.lr.lI.qz.pause();
            }
            catch (RemoteException var1_1) {
                gs.W("Could not pause mediation adapter.");
            }
        }
        this.lt.pause();
        this.ls.pause();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void resume() {
        o.aT("resume must be called on the main UI thread.");
        if (this.lr.lI != null && this.lr.lW == 0) {
            gj.b(this.lr.lI.rN);
        }
        if (this.lr.lI != null && this.lr.lI.qz != null) {
            try {
                this.lr.lI.qz.resume();
            }
            catch (RemoteException var1_1) {
                gs.W("Could not resume mediation adapter.");
            }
        }
        this.ls.resume();
        this.lt.resume();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void showInterstitial() {
        Object object;
        x x;
        o.aT("showInterstitial must be called on the main UI thread.");
        if (!this.lr.lH.og) {
            gs.W("Cannot call showInterstitial on a banner ad.");
            return;
        }
        if (this.lr.lI == null) {
            gs.W("The interstitial has not loaded.");
            return;
        }
        if (this.lr.lW == 1) return;
        {
            if (this.lr.lI.rN.dy()) {
                gs.W("The interstitial is already showing.");
                return;
            }
        }
        this.lr.lI.rN.x(true);
        if (this.lr.lI.rN.du().dE() || this.lr.lI.vp != null) {
            object = this.lt.a(this.lr.lH, this.lr.lI);
            if (this.lr.lI.rN.du().dE() && object != null) {
                object.a(new z(this.lr.lI.rN));
            }
        }
        if (this.lr.lI.tI) {
            try {
                this.lr.lI.qz.showInterstitial();
                return;
            }
            catch (RemoteException var3_2) {
                gs.d("Could not show interstitial.", var3_2);
                this.at();
                return;
            }
        }
        object = x = new x(this.lr.lX, false);
        if (this.lr.lB instanceof Activity) {
            object = ((Activity)this.lr.lB).getWindow();
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            object.getDecorView().getGlobalVisibleRect(rect);
            object.getDecorView().getWindowVisibleDisplayFrame(rect2);
            object = x;
            if (rect.bottom != 0) {
                object = x;
                if (rect2.bottom != 0) {
                    boolean bl = this.lr.lX;
                    boolean bl2 = rect.top == rect2.top;
                    object = new x(bl, bl2);
                }
            }
        }
        object = new dm(this, this, this, this.lr.lI.rN, this.lr.lI.orientation, this.lr.lD, this.lr.lI.tN, (x)object);
        dk.a(this.lr.lB, (dm)object);
    }

    @Override
    public void stopLoading() {
        o.aT("stopLoading must be called on the main UI thread.");
        if (this.lr.lI != null && this.lr.lW == 0) {
            this.lr.lI.rN.stopLoading();
            this.lr.lI = null;
        }
        if (this.lr.lF != null) {
            this.lr.lF.cancel();
        }
        if (this.lr.lG != null) {
            this.lr.lG.cancel();
        }
    }

    @ez
    private static final class a
    extends ViewSwitcher {
        private final gm ly;

        public a(Context context) {
            super(context);
            this.ly = new gm(context);
        }

        static /* synthetic */ gm a(a a) {
            return a.ly;
        }

        @Override
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            this.ly.c(motionEvent);
            return false;
        }
    }

    @ez
    static class b {
        public final String lA;
        public final Context lB;
        public final k lC;
        public final gt lD;
        public bc lE;
        public gg lF;
        public gg lG;
        public ay lH;
        public fz lI;
        public fz.a lJ;
        public ga lK;
        public bf lL;
        public el lM;
        public eh lN;
        public et lO;
        public eu lP;
        public bt lQ;
        public bu lR;
        public List<String> lS;
        public ee lT;
        public ge lU = null;
        public View lV = null;
        public int lW = 0;
        public boolean lX = false;
        private HashSet<ga> lY = null;
        public final a lz;

        /*
         * Enabled aggressive block sorting
         */
        public b(Context context, ay ay, String string, gt gt) {
            if (ay.og) {
                this.lz = null;
            } else {
                this.lz = new a(context);
                this.lz.setMinimumWidth(ay.widthPixels);
                this.lz.setMinimumHeight(ay.heightPixels);
                this.lz.setVisibility(4);
            }
            this.lH = ay;
            this.lA = string;
            this.lB = context;
            this.lD = gt;
            this.lC = new k(new w(this));
        }

        public void a(HashSet<ga> hashSet) {
            this.lY = hashSet;
        }

        public HashSet<ga> au() {
            return this.lY;
        }
    }

}

