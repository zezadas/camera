/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.internal.bl;
import com.google.android.gms.internal.df;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public class dg {
    private final Context mContext;
    private final WindowManager mG;
    private final gv md;
    private final bl rg;
    DisplayMetrics rh;
    private float ri;
    int rj = -1;
    int rk = -1;
    private int rl;
    private int rm = -1;
    private int rn = -1;
    private int[] ro = new int[2];

    public dg(gv gv, Context context, bl bl) {
        this.md = gv;
        this.mContext = context;
        this.rg = bl;
        this.mG = (WindowManager)context.getSystemService("window");
        this.bM();
        this.bN();
        this.bO();
    }

    private void bM() {
        this.rh = new DisplayMetrics();
        Display display = this.mG.getDefaultDisplay();
        display.getMetrics(this.rh);
        this.ri = this.rh.density;
        this.rl = display.getRotation();
    }

    private void bO() {
        this.md.getLocationOnScreen(this.ro);
        this.md.measure(0, 0);
        float f = 160.0f / (float)this.rh.densityDpi;
        this.rm = Math.round((float)this.md.getMeasuredWidth() * f);
        this.rn = Math.round(f * (float)this.md.getMeasuredHeight());
    }

    private df bU() {
        return new df.a().j(this.rg.bj()).i(this.rg.bk()).k(this.rg.bo()).l(this.rg.bl()).m(this.rg.bm()).bL();
    }

    void bN() {
        int n = gj.s(this.mContext);
        float f = 160.0f / (float)this.rh.densityDpi;
        this.rj = Math.round((float)this.rh.widthPixels * f);
        this.rk = Math.round((float)(this.rh.heightPixels - n) * f);
    }

    public void bP() {
        this.bS();
        this.bT();
        this.bR();
        this.bQ();
    }

    public void bQ() {
        if (gs.u(2)) {
            gs.U("Dispatching Ready Event.");
        }
        this.md.b("onReadyEventReceived", new JSONObject());
    }

    public void bR() {
        try {
            JSONObject jSONObject = new JSONObject().put("x", this.ro[0]).put("y", this.ro[1]).put("width", this.rm).put("height", this.rn);
            this.md.b("onDefaultPositionReceived", jSONObject);
            return;
        }
        catch (JSONException var1_2) {
            gs.b("Error occured while dispatching default position.", var1_2);
            return;
        }
    }

    public void bS() {
        try {
            JSONObject jSONObject = new JSONObject().put("width", this.rj).put("height", this.rk).put("density", this.ri).put("rotation", this.rl);
            this.md.b("onScreenInfoChanged", jSONObject);
            return;
        }
        catch (JSONException var1_2) {
            gs.b("Error occured while obtaining screen information.", var1_2);
            return;
        }
    }

    public void bT() {
        df df = this.bU();
        this.md.b("onDeviceFeaturesReceived", df.bK());
    }
}

