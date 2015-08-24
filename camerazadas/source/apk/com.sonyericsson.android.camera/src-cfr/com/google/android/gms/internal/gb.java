/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.al;
import com.google.android.gms.internal.am;
import com.google.android.gms.internal.an;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.cf;
import com.google.android.gms.internal.ey;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.ga;
import com.google.android.gms.internal.gc;
import com.google.android.gms.internal.gd;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gh;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.iv;
import com.google.android.gms.internal.kc;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

@ez
public class gb
implements cf.b {
    private static final gb vJ = new gb();
    public static final String vK = gb.vJ.vL;
    private Context mContext;
    private final Object mw = new Object();
    private am nu = null;
    private al nv = null;
    private ey nw = null;
    private gt qs;
    private boolean uH = true;
    private boolean uI = true;
    public final String vL = gj.do();
    private final gc vM = new gc(this.vL);
    private BigInteger vN = BigInteger.ONE;
    private final HashSet<ga> vO = new HashSet();
    private final HashMap<String, ge> vP = new HashMap();
    private boolean vQ = false;
    private boolean vR = false;
    private an vS = null;
    private LinkedList<Thread> vT = new LinkedList();
    private boolean vU = false;
    private Bundle vV = bn.bs();
    private String vW;

    private gb() {
    }

    public static Bundle a(Context context, gd gd, String string) {
        return vJ.b(context, gd, string);
    }

    public static void a(Context context, gt gt) {
        vJ.b(context, gt);
    }

    public static void a(Context context, boolean bl) {
        vJ.b(context, bl);
    }

    public static void b(HashSet<ga> hashSet) {
        vJ.c(hashSet);
    }

    public static Bundle bD() {
        return vJ.dg();
    }

    public static String c(int n, String string) {
        return vJ.d(n, string);
    }

    public static gb cU() {
        return vJ;
    }

    public static String cW() {
        return vJ.cX();
    }

    public static gc cY() {
        return vJ.cZ();
    }

    public static boolean da() {
        return vJ.db();
    }

    public static boolean dc() {
        return vJ.dd();
    }

    public static String de() {
        return vJ.df();
    }

    public static void e(Throwable throwable) {
        vJ.f(throwable);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void a(Bundle bundle) {
        Object object = this.mw;
        synchronized (object) {
            this.vU = true;
            this.vV = bundle;
            while (!this.vT.isEmpty()) {
                ey.a(this.mContext, this.vT.remove(0), this.qs);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(ga ga) {
        Object object = this.mw;
        synchronized (object) {
            this.vO.add(ga);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(String string, ge ge) {
        Object object = this.mw;
        synchronized (object) {
            this.vP.put(string, ge);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(Thread thread) {
        Object object = this.mw;
        synchronized (object) {
            if (this.vU) {
                ey.a(this.mContext, thread, this.qs);
            } else {
                this.vT.add(thread);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public Bundle b(Context arrayList, gd gd, String iterator) {
        Object object = this.mw;
        synchronized (object) {
            Bundle bundle = new Bundle();
            bundle.putBundle("app", this.vM.b((Context)arrayList, (String)iterator));
            arrayList = new Bundle();
            for (String string : this.vP.keySet()) {
                arrayList.putBundle(string, this.vP.get(string).toBundle());
            }
            bundle.putBundle("slots", (Bundle)arrayList);
            arrayList = new ArrayList<Bundle>();
            iterator = this.vO.iterator();
            do {
                if (!iterator.hasNext()) {
                    bundle.putParcelableArrayList("ads", arrayList);
                    gd.a(this.vO);
                    this.vO.clear();
                    return bundle;
                }
                arrayList.add(iterator.next().toBundle());
            } while (true);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void b(Context context, gt gt) {
        Object object = this.mw;
        synchronized (object) {
            if (!this.vR) {
                this.mContext = context.getApplicationContext();
                this.qs = gt;
                this.uH = gh.o(context);
                iv.H(context);
                cf.a(context, this);
                this.a(Thread.currentThread());
                this.vW = gj.c(context, gt.wD);
                this.vR = true;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void b(Context context, boolean bl) {
        Object object = this.mw;
        synchronized (object) {
            if (bl != this.uH) {
                this.uH = bl;
                gh.a(context, bl);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void c(HashSet<ga> hashSet) {
        Object object = this.mw;
        synchronized (object) {
            this.vO.addAll(hashSet);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean cV() {
        Object object = this.mw;
        synchronized (object) {
            return this.uI;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public String cX() {
        Object object = this.mw;
        synchronized (object) {
            String string = this.vN.toString();
            this.vN = this.vN.add(BigInteger.ONE);
            return string;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public gc cZ() {
        Object object = this.mw;
        synchronized (object) {
            return this.vM;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public String d(int n, String string) {
        Resources resources = this.qs.wG ? this.mContext.getResources() : GooglePlayServicesUtil.getRemoteResource(this.mContext);
        if (resources == null) {
            return string;
        }
        return resources.getString(n);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean db() {
        Object object = this.mw;
        synchronized (object) {
            boolean bl = this.vQ;
            this.vQ = true;
            return bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean dd() {
        Object object = this.mw;
        synchronized (object) {
            return this.uH;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public String df() {
        Object object = this.mw;
        synchronized (object) {
            return this.vW;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public Bundle dg() {
        Object object = this.mw;
        synchronized (object) {
            return this.vV;
        }
    }

    public void f(Throwable throwable) {
        if (this.vR) {
            new ey(this.mContext, this.qs, null, null).b(throwable);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public an l(Context object) {
        if (!gb.bD().getBoolean(bn.pd.getKey(), false)) return null;
        if (!kc.hE()) return null;
        if (this.cV()) {
            return null;
        }
        Object object2 = this.mw;
        synchronized (object2) {
            if (this.nu == null) {
                if (!(object instanceof Activity)) {
                    return null;
                }
                this.nu = new am((Application)object.getApplicationContext(), (Activity)object);
            }
            if (this.nv == null) {
                this.nv = new al();
            }
            if (this.vS == null) {
                this.vS = new an(this.nu, this.nv, this.vV, new ey(this.mContext, this.qs, null, null));
            }
            this.vS.aV();
            return this.vS;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void v(boolean bl) {
        Object object = this.mw;
        synchronized (object) {
            this.uI = bl;
            return;
        }
    }
}

