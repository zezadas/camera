/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public class dd {
    static final Set<String> qT = new HashSet<String>(Arrays.asList("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center"));
    private int lf = -1;
    private int lg = -1;
    private final Context mContext;
    private final gv md;
    private final Map<String, String> qM;
    private int qU = 0;
    private int qV = 0;
    private boolean qW = true;
    private String qX = "top-right";

    public dd(gv gv, Map<String, String> map) {
        this.md = gv;
        this.qM = map;
        this.mContext = gv.dz();
    }

    private void bG() {
        int n;
        Object object = gj.t(this.mContext);
        if (!TextUtils.isEmpty((CharSequence)this.qM.get("width")) && this.b(n = gj.M(this.qM.get("width")), object[0])) {
            this.lf = n;
        }
        if (!TextUtils.isEmpty((CharSequence)this.qM.get("height")) && this.c(n = gj.M(this.qM.get("height")), object[1])) {
            this.lg = n;
        }
        if (!TextUtils.isEmpty((CharSequence)this.qM.get("offsetX"))) {
            this.qU = gj.M(this.qM.get("offsetX"));
        }
        if (!TextUtils.isEmpty((CharSequence)this.qM.get("offsetY"))) {
            this.qV = gj.M(this.qM.get("offsetY"));
        }
        if (!TextUtils.isEmpty((CharSequence)this.qM.get("allowOffscreen"))) {
            this.qW = Boolean.parseBoolean(this.qM.get("allowOffscreen"));
        }
        if (!TextUtils.isEmpty((CharSequence)(object = (Object)this.qM.get("customClosePosition"))) && qT.contains(object)) {
            this.qX = object;
        }
    }

    boolean b(int n, int n2) {
        if (n >= 50 && n < n2) {
            return true;
        }
        return false;
    }

    boolean bH() {
        if (this.lf > -1 && this.lg > -1) {
            return true;
        }
        return false;
    }

    void bI() {
        try {
            JSONObject jSONObject = new JSONObject().put("x", this.qU).put("y", this.qV).put("width", this.lf).put("height", this.lg);
            this.md.b("onSizeChanged", jSONObject);
            return;
        }
        catch (JSONException var1_2) {
            gs.b("Error occured while dispatching size change.", var1_2);
            return;
        }
    }

    void bJ() {
        try {
            JSONObject jSONObject = new JSONObject().put("state", "resized");
            this.md.b("onStateChanged", jSONObject);
            return;
        }
        catch (JSONException var1_2) {
            gs.b("Error occured while dispatching state change.", var1_2);
            return;
        }
    }

    boolean c(int n, int n2) {
        if (n >= 50 && n < n2) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void execute() {
        gs.U("PLEASE IMPLEMENT mraid.resize()");
        if (this.mContext == null) {
            gs.W("Not an activity context. Cannot resize.");
            return;
        }
        if (this.md.Y().og) {
            gs.W("Is interstitial. Cannot resize an interstitial.");
            return;
        }
        if (this.md.dy()) {
            gs.W("Is expanded. Cannot resize an expanded banner.");
            return;
        }
        this.bG();
        if (!this.bH()) {
            gs.W("Invalid width and height options. Cannot resize.");
            return;
        }
        Object object = (WindowManager)this.mContext.getSystemService("window");
        Object object2 = new DisplayMetrics();
        object.getDefaultDisplay().getMetrics((DisplayMetrics)object2);
        int n = gr.a((DisplayMetrics)object2, this.lf);
        int n2 = gr.a((DisplayMetrics)object2, this.lg);
        object = this.md.getParent();
        if (object != null && object instanceof ViewGroup) {
            ((ViewGroup)object).removeView(this.md);
        }
        object = new LinearLayout(this.mContext);
        object.setBackgroundColor(0);
        object2 = new PopupWindow(this.mContext);
        object2.setHeight(n2 + 16);
        object2.setWidth(n + 16);
        boolean bl = !this.qW;
        object2.setClippingEnabled(bl);
        object2.setContentView((View)object);
        object.addView((View)this.md, -1, -1);
        object2.showAtLocation(((Activity)this.mContext).getWindow().getDecorView(), 0, this.qU, this.qV);
        this.md.a(new ay(this.mContext, new AdSize(this.lf, this.lg)));
        this.bI();
        this.bJ();
    }
}

