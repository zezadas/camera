/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.internal.ac;
import com.google.android.gms.internal.ad;
import com.google.android.gms.internal.ag;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.aj;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bx;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public final class af
implements ViewTreeObserver.OnGlobalLayoutListener,
ViewTreeObserver.OnScrollChangedListener {
    private static final long mK = TimeUnit.MILLISECONDS.toNanos(100);
    private WeakReference<ViewTreeObserver> mA;
    private final WeakReference<View> mB;
    private final ad mC;
    private final Context mD;
    private final ah mE;
    private boolean mF;
    private final WindowManager mG;
    private final PowerManager mH;
    private final KeyguardManager mI;
    private ag mJ;
    private boolean mL;
    private final BlockingQueue<Runnable> mM;
    private long mN;
    private boolean mO;
    private boolean mP;
    private BroadcastReceiver mQ;
    private final HashSet<ac> mR;
    private boolean mn;
    private final Object mw;
    private final WeakReference<fz> mz;

    public af(Context context, ay ay, fz fz, View view, gt gt) {
        this(ay, fz, gt, view, new aj(context, gt));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public af(ay object, fz fz, gt gt, final View view, ah ah) {
        this.mw = new Object();
        this.mn = false;
        this.mL = false;
        this.mM = new ArrayBlockingQueue<Runnable>(2);
        this.mN = Long.MIN_VALUE;
        this.mR = new HashSet();
        this.mz = new WeakReference<fz>(fz);
        this.mB = new WeakReference<View>(view);
        this.mA = new WeakReference<Object>(null);
        this.mO = true;
        this.mC = new ad(UUID.randomUUID().toString(), gt, object.of, fz.vp);
        this.mE = ah;
        this.mG = (WindowManager)view.getContext().getSystemService("window");
        this.mH = (PowerManager)view.getContext().getApplicationContext().getSystemService("power");
        this.mI = (KeyguardManager)view.getContext().getSystemService("keyguard");
        this.mD = view.getContext().getApplicationContext();
        this.a(ah);
        this.mE.a(new ah.a(){

            @Override
            public void aM() {
                af.this.mF = true;
                af.this.d(view);
                af.this.aD();
            }
        });
        this.b(this.mE);
        try {
            object = this.e(view);
            this.mM.add(()new Runnable((JSONObject)object){
                final /* synthetic */ JSONObject mU;

                @Override
                public void run() {
                    af.this.a(this.mU);
                }
            });
        }
        catch (Throwable var1_2) {}
        this.mM.add(()new Runnable(){

            @Override
            public void run() {
                af.this.e(false);
            }
        });
        gs.S("Tracking ad unit: " + this.mC.aC());
    }

    protected int a(int n, DisplayMetrics displayMetrics) {
        float f = displayMetrics.density;
        return (int)((float)n / f);
    }

    protected void a(View view, Map<String, String> map) {
        this.e(false);
    }

    public void a(ac ac) {
        this.mR.add(ac);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(ag ag) {
        Object object = this.mw;
        synchronized (object) {
            this.mJ = ag;
            return;
        }
    }

    protected void a(ah ah) {
        ah.f("https://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.html");
    }

    protected void a(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONArray.put(jSONObject);
            jSONObject2.put("units", jSONArray);
            this.mE.a("AFMA_updateActiveView", jSONObject2);
            return;
        }
        catch (Throwable var1_2) {
            gs.b("Skipping active view message.", var1_2);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected boolean a(Map<String, String> object) {
        if (object == null) {
            return false;
        }
        if (TextUtils.isEmpty((CharSequence)(object = (String)object.get("hashCode")))) return false;
        if (!object.equals(this.mC.aC())) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected void aD() {
        Object object = this.mw;
        synchronized (object) {
            if (this.mQ != null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            this.mQ = new BroadcastReceiver(){

                @Override
                public void onReceive(Context context, Intent intent) {
                    af.this.e(false);
                }
            };
            this.mD.registerReceiver(this.mQ, intentFilter);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected void aE() {
        Object object = this.mw;
        synchronized (object) {
            if (this.mQ != null) {
                this.mD.unregisterReceiver(this.mQ);
                this.mQ = null;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void aF() {
        Object object = this.mw;
        synchronized (object) {
            if (this.mO) {
                this.mP = true;
                try {
                    this.a(this.aL());
                }
                catch (JSONException var2_2) {
                    gs.b("JSON Failure while processing active view data.", var2_2);
                }
                gs.S("Untracking ad unit: " + this.mC.aC());
            }
            return;
        }
    }

    protected void aG() {
        if (this.mJ != null) {
            this.mJ.a(this);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean aH() {
        Object object = this.mw;
        synchronized (object) {
            return this.mO;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void aI() {
        Object object = this.mB.get();
        if (object == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = this.mA.get();
        if ((object = object.getViewTreeObserver()) == viewTreeObserver) return;
        this.mA = new WeakReference<Object>(object);
        object.addOnScrollChangedListener(this);
        object.addOnGlobalLayoutListener(this);
    }

    protected void aJ() {
        ViewTreeObserver viewTreeObserver = this.mA.get();
        if (!(viewTreeObserver != null && viewTreeObserver.isAlive())) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this);
        viewTreeObserver.removeGlobalOnLayoutListener(this);
    }

    protected JSONObject aK() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("afmaVersion", this.mC.aA()).put("activeViewJSON", this.mC.aB()).put("timestamp", TimeUnit.NANOSECONDS.toMillis(System.nanoTime())).put("adFormat", this.mC.az()).put("hashCode", this.mC.aC());
        return jSONObject;
    }

    protected JSONObject aL() throws JSONException {
        JSONObject jSONObject = this.aK();
        jSONObject.put("doneReasonCode", "u");
        return jSONObject;
    }

    protected void b(ah ah) {
        ah.a("/updateActiveView", new by(){

            @Override
            public void a(gv gv, Map<String, String> map) {
                if (!af.this.a(map)) {
                    return;
                }
                af.this.a(gv, map);
            }
        });
        ah.a("/untrackActiveViewUnit", new by(){

            @Override
            public void a(gv gv, Map<String, String> map) {
                if (!af.this.a(map)) {
                    return;
                }
                gs.S("Received request to untrack: " + af.this.mC.aC());
                af.this.destroy();
            }
        });
        ah.a("/visibilityChanged", new by(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void a(gv gv, Map<String, String> map) {
                if (!(af.this.a(map) && map.containsKey("isVisible"))) {
                    return;
                }
                boolean bl = "1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible"));
                af.this.d(bl);
            }
        });
        ah.a("/viewabilityChanged", bx.pA);
    }

    protected void d(View iterator) {
        iterator = new ArrayList();
        this.mM.drainTo((Collection<Runnable>)iterator);
        iterator = iterator.iterator();
        while (iterator.hasNext()) {
            ((Runnable)iterator.next()).run();
        }
    }

    protected void d(boolean bl) {
        Iterator<ac> iterator = this.mR.iterator();
        while (iterator.hasNext()) {
            iterator.next().a(this, bl);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected void destroy() {
        Object object = this.mw;
        synchronized (object) {
            this.aJ();
            this.aE();
            this.mO = false;
            try {
                this.mE.destroy();
            }
            catch (Throwable var2_2) {}
            this.aG();
            return;
        }
    }

    protected JSONObject e(View view) throws JSONException {
        Object object = new int[2];
        Object object2 = new int[2];
        view.getLocationOnScreen((int[])object);
        view.getLocationInWindow((int[])object2);
        object2 = this.aK();
        DisplayMetrics displayMetrics = view.getContext().getResources().getDisplayMetrics();
        Rect rect = new Rect();
        rect.left = object[0];
        rect.top = object[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        object = new Rect();
        object.right = this.mG.getDefaultDisplay().getWidth();
        object.bottom = this.mG.getDefaultDisplay().getHeight();
        Rect rect2 = new Rect();
        boolean bl = view.getGlobalVisibleRect(rect2, null);
        Rect rect3 = new Rect();
        boolean bl2 = view.getLocalVisibleRect(rect3);
        object2.put("viewBox", new JSONObject().put("top", this.a(object.top, displayMetrics)).put("bottom", this.a(object.bottom, displayMetrics)).put("left", this.a(object.left, displayMetrics)).put("right", this.a(object.right, displayMetrics))).put("adBox", new JSONObject().put("top", this.a(rect.top, displayMetrics)).put("bottom", this.a(rect.bottom, displayMetrics)).put("left", this.a(rect.left, displayMetrics)).put("right", this.a(rect.right, displayMetrics))).put("globalVisibleBox", new JSONObject().put("top", this.a(rect2.top, displayMetrics)).put("bottom", this.a(rect2.bottom, displayMetrics)).put("left", this.a(rect2.left, displayMetrics)).put("right", this.a(rect2.right, displayMetrics))).put("globalVisibleBoxVisible", bl).put("localVisibleBox", new JSONObject().put("top", this.a(rect3.top, displayMetrics)).put("bottom", this.a(rect3.bottom, displayMetrics)).put("left", this.a(rect3.left, displayMetrics)).put("right", this.a(rect3.right, displayMetrics))).put("localVisibleBoxVisible", bl2).put("screenDensity", displayMetrics.density).put("isVisible", this.f(view)).put("isStopped", this.mL).put("isPaused", this.mn);
        return object2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    protected void e(boolean var1_1) {
        var5_2 = this.mw;
        // MONITORENTER : var5_2
        if (!(this.mF && this.mO)) {
            // MONITOREXIT : var5_2
            return;
        }
        var3_3 = System.nanoTime();
        if (var1_1 && this.mN + af.mK > var3_3) {
            // MONITOREXIT : var5_2
            return;
        }
        this.mN = var3_3;
        var6_4 = this.mz.get();
        var7_6 = this.mB.get();
        if (var7_6 == null) ** GOTO lbl-1000
        if (var6_4 != null) {
            var2_7 = false;
        } else lbl-1000: // 2 sources:
        {
            var2_7 = true;
        }
        if (var2_7) {
            this.aF();
            // MONITOREXIT : var5_2
            return;
        }
        try {
            this.a(this.e(var7_6));
        }
        catch (JSONException var6_5) {
            gs.a("Active view update failed.", var6_5);
        }
        this.aI();
        this.aG();
        // MONITOREXIT : var5_2
    }

    protected boolean f(View view) {
        if (view.getVisibility() == 0 && view.isShown() && this.mH.isScreenOn() && !this.mI.inKeyguardRestrictedInputMode()) {
            return true;
        }
        return false;
    }

    @Override
    public void onGlobalLayout() {
        this.e(false);
    }

    @Override
    public void onScrollChanged() {
        this.e(true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void pause() {
        Object object = this.mw;
        synchronized (object) {
            this.mn = true;
            this.e(false);
            this.mE.pause();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void resume() {
        Object object = this.mw;
        synchronized (object) {
            this.mE.resume();
            this.mn = false;
            this.e(false);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void stop() {
        Object object = this.mw;
        synchronized (object) {
            this.mL = true;
            this.e(false);
            this.mE.pause();
            return;
        }
    }

}

