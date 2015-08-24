/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.al;
import com.google.android.gms.internal.am;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.ey;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.iv;
import com.google.android.gms.internal.kc;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public class an
extends Thread {
    private boolean mStarted = false;
    private final Object mw;
    private final int nf;
    private final int nh;
    private boolean ns = false;
    private boolean nt = false;
    private final am nu;
    private final al nv;
    private final ey nw;
    private final int nx;
    private final int ny;
    private final int nz;

    public an(am am, al al, Bundle bundle, ey ey) {
        this.nu = am;
        this.nv = al;
        this.nw = ey;
        this.mw = new Object();
        this.nf = bundle.getInt(bn.pe.getKey());
        this.ny = bundle.getInt(bn.pf.getKey());
        this.nh = bundle.getInt(bn.pg.getKey());
        this.nz = bundle.getInt(bn.ph.getKey());
        this.nx = bundle.getInt(bn.pi.getKey(), 10);
        this.setName("ContentFetchTask");
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void a(Activity activity) {
        View view;
        if (activity == null) {
            return;
        }
        View view2 = view = null;
        if (activity.getWindow() == null) return;
        view2 = view;
        if (activity.getWindow().getDecorView() != null) {
            view2 = activity.getWindow().getDecorView().findViewById(16908290);
        }
        if (view2 == null) return;
        this.g(view2);
    }

    private boolean a(final WebView webView, final ak ak) {
        if (!kc.hI()) {
            return false;
        }
        ak.aR();
        webView.post(new Runnable(){
            ValueCallback<String> nC;

            @Override
            public void run() {
                if (webView.getSettings().getJavaScriptEnabled()) {
                    webView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.nC);
                }
            }

        });
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean aW() {
        KeyguardManager keyguardManager;
        Object object;
        Iterator iterator;
        block7 : {
            block6 : {
                object = this.nu.getContext();
                if (object != null) break block6;
                return false;
            }
            iterator = (ActivityManager)object.getSystemService("activity");
            keyguardManager = (KeyguardManager)object.getSystemService("keyguard");
            object = (PowerManager)object.getSystemService("power");
            if (iterator == null || keyguardManager == null) return false;
            if (object == null) return false;
            iterator = iterator.getRunningAppProcesses();
            if (iterator != null) break block7;
            return false;
        }
        try {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : iterator) {
                boolean bl;
                if (Process.myPid() != runningAppProcessInfo.pid) continue;
                if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode() || !(bl = object.isScreenOn())) return false;
                return true;
            }
            return false;
        }
        catch (Throwable var2_4) {
            return false;
        }
    }

    a a(View view, ak ak) {
        if (view == null) {
            return new a(0, 0);
        }
        if (view instanceof TextView && !(view instanceof EditText)) {
            ak.i(((TextView)view).getText().toString());
            return new a(1, 0);
        }
        if (view instanceof WebView && !(view instanceof gv)) {
            ak.aR();
            if (this.a((WebView)view, ak)) {
                return new a(0, 1);
            }
            return new a(0, 0);
        }
        if (view instanceof ViewGroup) {
            view = (ViewGroup)view;
            int n = 0;
            int n2 = 0;
            for (int i = 0; i < view.getChildCount(); ++i) {
                a a = this.a(view.getChildAt(i), ak);
                n2+=a.nG;
                n+=a.nH;
            }
            return new a(n2, n);
        }
        return new a(0, 0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    void a(ak ak, WebView webView, String string) {
        ak.aQ();
        try {
            if (!TextUtils.isEmpty((CharSequence)string)) {
                string = new JSONObject(string).optString("text");
                if (!TextUtils.isEmpty((CharSequence)webView.getTitle())) {
                    ak.h(webView.getTitle() + "\n" + string);
                } else {
                    ak.h(string);
                }
            }
            if (!ak.aN()) return;
            {
                this.nv.b(ak);
                return;
            }
        }
        catch (JSONException var1_2) {
            gs.S("Json string may be malformed.");
            return;
        }
        catch (Throwable var1_3) {
            gs.a("Failed to get webview content.", var1_3);
            this.nw.b(var1_3);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void aV() {
        Object object = this.mw;
        synchronized (object) {
            if (this.mStarted) {
                gs.S("Content hash thread already started, quiting...");
                return;
            }
            this.mStarted = true;
        }
        this.start();
    }

    public ak aX() {
        return this.nv.aU();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void aY() {
        Object object = this.mw;
        synchronized (object) {
            this.ns = true;
            gs.S("ContentFetchThread: paused, mPause = " + this.ns);
            return;
        }
    }

    public boolean aZ() {
        return this.ns;
    }

    boolean g(final View view) {
        if (view == null) {
            return false;
        }
        view.post(new Runnable(){

            @Override
            public void run() {
                an.this.h(view);
            }
        });
        return true;
    }

    void h(View object) {
        try {
            ak ak = new ak(this.nf, this.ny, this.nh, this.nz);
            object = this.a((View)object, ak);
            ak.aS();
            if (object.nG == 0 && object.nH == 0) {
                return;
            }
            if (!(object.nH == 0 && ak.aT() == 0 || object.nH == 0 && this.nv.a(ak))) {
                this.nv.c(ak);
                return;
            }
        }
        catch (Exception var1_2) {
            gs.b("Exception in fetchContentOnUIThread", var1_2);
            this.nw.b(var1_2);
        }
    }

    /*
     * WARNING - Removed back jump from a try to a catch block - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void run() {
        while (!this.nt) {
            Object object;
            try {
                if (this.aW()) {
                    object = this.nu.getActivity();
                    if (object == null) {
                        gs.S("ContentFetchThread: no activity");
                        continue;
                    }
                    this.a((Activity)object);
                } else {
                    gs.S("ContentFetchTask: sleeping");
                    this.aY();
                }
                Thread.sleep(this.nx * 1000);
            }
            catch (Throwable var2_3) {
                gs.b("Error in ContentFetchTask", var2_3);
                this.nw.b(var2_3);
            }
            object = this.mw;
            synchronized (object) {
                boolean bl;
                while (bl = this.ns) {
                    try {
                        gs.S("ContentFetchTask: waiting");
                        this.mw.wait();
                    }
                    catch (InterruptedException var3_4) {}
                }
                {
                    // MONITOREXIT [4, 6, 9] lbl28 : MonitorExitStatement: MONITOREXIT : var2_2
                    continue;
                }
            }
            break;
        }
        return;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void wakeup() {
        Object object = this.mw;
        synchronized (object) {
            this.ns = false;
            this.mw.notifyAll();
            gs.S("ContentFetchThread: wakeup");
            return;
        }
    }

    @ez
    class a {
        final int nG;
        final int nH;

        a(int n, int n2) {
            this.nG = n;
            this.nH = n2;
        }
    }

}

