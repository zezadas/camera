/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gn;
import com.google.android.gms.internal.gp;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gx;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.k;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public class gv
extends WebView
implements DownloadListener {
    private final WindowManager mG;
    private final Object mw = new Object();
    private ay qr;
    private final gt qs;
    private final k sX;
    private final gw wH;
    private final a wI;
    private dk wJ;
    private boolean wK;
    private boolean wL;
    private boolean wM;
    private boolean wN;

    /*
     * Enabled aggressive block sorting
     */
    protected gv(a a, ay object, boolean bl, boolean bl2, k k, gt gt) {
        super(a);
        this.wI = a;
        this.qr = object;
        this.wK = bl;
        this.sX = k;
        this.qs = gt;
        this.mG = (WindowManager)this.getContext().getSystemService("window");
        this.setBackgroundColor(0);
        object = this.getSettings();
        object.setJavaScriptEnabled(true);
        object.setSavePassword(false);
        object.setSupportMultipleWindows(true);
        object.setJavaScriptCanOpenWindowsAutomatically(true);
        gj.a((Context)a, gt.wD, (WebSettings)object);
        if (Build.VERSION.SDK_INT >= 17) {
            gp.a(this.getContext(), (WebSettings)object);
        } else if (Build.VERSION.SDK_INT >= 11) {
            gn.a(this.getContext(), (WebSettings)object);
        }
        this.setDownloadListener(this);
        this.wH = Build.VERSION.SDK_INT >= 11 ? new gy(this, bl2) : new gw(this, bl2);
        this.setWebViewClient(this.wH);
        if (Build.VERSION.SDK_INT >= 14) {
            this.setWebChromeClient(new gz(this));
        } else if (Build.VERSION.SDK_INT >= 11) {
            this.setWebChromeClient(new gx(this));
        }
        this.dA();
    }

    public static gv a(Context context, ay ay, boolean bl, boolean bl2, k k, gt gt) {
        return new gv(new a(context), ay, bl, bl2, k, gt);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void dA() {
        Object object = this.mw;
        synchronized (object) {
            if (this.wK || this.qr.og) {
                if (Build.VERSION.SDK_INT < 14) {
                    gs.S("Disabling hardware acceleration on an overlay.");
                    this.dB();
                } else {
                    gs.S("Enabling hardware acceleration on an overlay.");
                    this.dC();
                }
            } else if (Build.VERSION.SDK_INT < 18) {
                gs.S("Disabling hardware acceleration on an AdView.");
                this.dB();
            } else {
                gs.S("Enabling hardware acceleration on an AdView.");
                this.dC();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void dB() {
        Object object = this.mw;
        synchronized (object) {
            if (!(this.wL || Build.VERSION.SDK_INT < 11)) {
                gn.i(this);
            }
            this.wL = true;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void dC() {
        Object object = this.mw;
        synchronized (object) {
            if (this.wL && Build.VERSION.SDK_INT >= 11) {
                gn.j(this);
            }
            this.wL = false;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected void X(String string) {
        Object object = this.mw;
        synchronized (object) {
            if (!this.isDestroyed()) {
                this.loadUrl(string);
            } else {
                gs.W("The webview is destroyed. Ignoring action.");
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public ay Y() {
        Object object = this.mw;
        synchronized (object) {
            return this.qr;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(Context context, ay ay) {
        Object object = this.mw;
        synchronized (object) {
            this.wI.setBaseContext(context);
            this.wJ = null;
            this.qr = ay;
            this.wK = false;
            this.wN = false;
            gj.b(this);
            this.loadUrl("about:blank");
            this.wH.reset();
            this.setOnTouchListener(null);
            this.setOnClickListener(null);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(ay ay) {
        Object object = this.mw;
        synchronized (object) {
            this.qr = ay;
            this.requestLayout();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(dk dk) {
        Object object = this.mw;
        synchronized (object) {
            this.wJ = dk;
            return;
        }
    }

    public void a(String string, Map<String, ?> object) {
        try {
            object = gj.t(object);
            this.b(string, (JSONObject)object);
            return;
        }
        catch (JSONException var1_2) {
            gs.W("Could not convert parameters to JSON.");
            return;
        }
    }

    public void a(String string, JSONObject object) {
        Object object2 = object;
        if (object == null) {
            object2 = new JSONObject();
        }
        object = object2.toString();
        object2 = new StringBuilder();
        object2.append("javascript:" + string + "(");
        object2.append((String)object);
        object2.append(");");
        this.X(object2.toString());
    }

    public void b(String string, JSONObject object) {
        Object object2 = object;
        if (object == null) {
            object2 = new JSONObject();
        }
        object = object2.toString();
        object2 = new StringBuilder();
        object2.append("javascript:AFMA_ReceiveMessage('");
        object2.append(string);
        object2.append("'");
        object2.append(",");
        object2.append((String)object);
        object2.append(");");
        gs.V("Dispatching AFMA event: " + object2);
        this.X(object2.toString());
    }

    public void bS() {
        if (!this.du().dE()) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display display = this.mG.getDefaultDisplay();
        display.getMetrics(displayMetrics);
        int n = gj.s(this.getContext());
        float f = 160.0f / (float)displayMetrics.densityDpi;
        int n2 = Math.round((float)displayMetrics.widthPixels * f);
        n = Math.round((float)(displayMetrics.heightPixels - n) * f);
        try {
            this.b("onScreenInfoChanged", new JSONObject().put("width", n2).put("height", n).put("density", displayMetrics.density).put("rotation", display.getRotation()));
            return;
        }
        catch (JSONException var4_2) {
            gs.b("Error occured while obtaining screen information.", var4_2);
            return;
        }
    }

    public void bZ() {
        HashMap<String, String> hashMap = new HashMap<String, String>(1);
        hashMap.put("version", this.qs.wD);
        this.a("onshow", hashMap);
    }

    public void ca() {
        HashMap<String, String> hashMap = new HashMap<String, String>(1);
        hashMap.put("version", this.qs.wD);
        this.a("onhide", hashMap);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void destroy() {
        Object object = this.mw;
        synchronized (object) {
            super.destroy();
            this.wM = true;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public dk dt() {
        Object object = this.mw;
        synchronized (object) {
            return this.wJ;
        }
    }

    public gw du() {
        return this.wH;
    }

    public boolean dv() {
        return this.wN;
    }

    public k dw() {
        return this.sX;
    }

    public gt dx() {
        return this.qs;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean dy() {
        Object object = this.mw;
        synchronized (object) {
            return this.wK;
        }
    }

    public Context dz() {
        return this.wI.dz();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void evaluateJavascript(String string, ValueCallback<String> valueCallback) {
        Object object = this.mw;
        synchronized (object) {
            if (!this.isDestroyed()) {
                super.evaluateJavascript(string, valueCallback);
                return;
            }
            gs.W("The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean isDestroyed() {
        Object object = this.mw;
        synchronized (object) {
            return this.wM;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void o(boolean bl) {
        Object object = this.mw;
        synchronized (object) {
            if (this.wJ != null) {
                this.wJ.o(bl);
            } else {
                this.wN = bl;
            }
            return;
        }
    }

    @Override
    public void onDownloadStart(String string, String object, String string2, String string3, long l) {
        try {
            object = new Intent("android.intent.action.VIEW");
            object.setDataAndType(Uri.parse(string), string3);
            this.getContext().startActivity((Intent)object);
            return;
        }
        catch (ActivityNotFoundException var2_3) {
            gs.S("Couldn't find an Activity to view url/mimetype: " + string + " / " + string3);
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    protected void onMeasure(int var1_1, int var2_2) {
        block11 : {
            var5_3 = Integer.MAX_VALUE;
            var9_4 = this.mw;
            // MONITORENTER : var9_4
            if (this.isInEditMode() || this.wK) {
                super.onMeasure(var1_1, var2_2);
                // MONITOREXIT : var9_4
                return;
            }
            var8_5 = View.MeasureSpec.getMode(var1_1);
            var4_6 = View.MeasureSpec.getSize(var1_1);
            var7_7 = View.MeasureSpec.getMode(var2_2);
            var6_8 = View.MeasureSpec.getSize(var2_2);
            if (var8_5 == Integer.MIN_VALUE) ** GOTO lbl-1000
            if (var8_5 != 1073741824) {
                var1_1 = Integer.MAX_VALUE;
            } else lbl-1000: // 2 sources:
            {
                var1_1 = var4_6;
            }
            if (var7_7 != Integer.MIN_VALUE) {
                var2_2 = var5_3;
                if (var7_7 != 1073741824) break block11;
            }
            var2_2 = var6_8;
        }
        if (this.qr.widthPixels > var1_1 || this.qr.heightPixels > var2_2) {
            var3_9 = this.wI.getResources().getDisplayMetrics().density;
            gs.W("Not enough space to show ad. Needs " + (int)((float)this.qr.widthPixels / var3_9) + "x" + (int)((float)this.qr.heightPixels / var3_9) + " dp, but only has " + (int)((float)var4_6 / var3_9) + "x" + (int)((float)var6_8 / var3_9) + " dp.");
            if (this.getVisibility() != 8) {
                this.setVisibility(4);
            }
            this.setMeasuredDimension(0, 0);
            // MONITOREXIT : var9_4
            return;
        }
        if (this.getVisibility() != 8) {
            this.setVisibility(0);
        }
        this.setMeasuredDimension(this.qr.widthPixels, this.qr.heightPixels);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.sX != null) {
            this.sX.a(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setContext(Context context) {
        this.wI.setBaseContext(context);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void x(boolean bl) {
        Object object = this.mw;
        synchronized (object) {
            this.wK = bl;
            this.dA();
            return;
        }
    }

    @ez
    protected static class a
    extends MutableContextWrapper {
        private Context mD;
        private Activity wO;

        public a(Context context) {
            super(context);
            this.setBaseContext(context);
        }

        public Context dz() {
            return this.wO;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void setBaseContext(Context context) {
            this.mD = context.getApplicationContext();
            context = context instanceof Activity ? (Activity)context : null;
            this.wO = context;
            super.setBaseContext(this.mD);
        }

        @Override
        public void startActivity(Intent intent) {
            if (this.wO != null) {
                this.wO.startActivity(intent);
                return;
            }
            intent.setFlags(268435456);
            this.mD.startActivity(intent);
        }
    }

}

