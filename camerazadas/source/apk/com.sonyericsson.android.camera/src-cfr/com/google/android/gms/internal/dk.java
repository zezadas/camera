/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.do;
import com.google.android.gms.internal.dp;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gm;
import com.google.android.gms.internal.gn;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.t;
import com.google.android.gms.internal.v;
import com.google.android.gms.internal.x;

@ez
public class dk
extends ds.a {
    private static final int ru = Color.argb(0, 0, 0, 0);
    private gv md;
    private final Activity nr;
    private boolean rA = false;
    private FrameLayout rB;
    private WebChromeClient.CustomViewCallback rC;
    private boolean rD = false;
    private boolean rE = false;
    private boolean rF = false;
    private RelativeLayout rG;
    private dm rv;
    private do rw;
    private c rx;
    private dp ry;
    private boolean rz;

    public dk(Activity activity) {
        this.nr = activity;
    }

    private static RelativeLayout.LayoutParams a(int n, int n2, int n3, int n4) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(n3, n4);
        layoutParams.setMargins(n, n2, 0, 0);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        return layoutParams;
    }

    public static void a(Context context, dm dm) {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", dm.lD.wG);
        dm.a(intent, dm);
        intent.addFlags(524288);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
    }

    @Override
    public void U() {
        this.rz = true;
    }

    public void a(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.rB = new FrameLayout(this.nr);
        this.rB.setBackgroundColor(-16777216);
        this.rB.addView(view, -1, -1);
        this.nr.setContentView(this.rB);
        this.U();
        this.rC = customViewCallback;
        this.rA = true;
    }

    public void b(int n, int n2, int n3, int n4) {
        if (this.rw != null) {
            this.rw.setLayoutParams(dk.a(n, n2, n3, n4));
        }
    }

    public do bV() {
        return this.rw;
    }

    public void bW() {
        if (this.rv != null && this.rA) {
            this.setRequestedOrientation(this.rv.orientation);
        }
        if (this.rB != null) {
            this.nr.setContentView(this.rG);
            this.U();
            this.rB.removeAllViews();
            this.rB = null;
        }
        if (this.rC != null) {
            this.rC.onCustomViewHidden();
            this.rC = null;
        }
        this.rA = false;
    }

    public void bX() {
        this.rG.removeView(this.ry);
        this.n(true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void bY() {
        if (!this.nr.isFinishing()) return;
        if (this.rE) {
            return;
        }
        this.rE = true;
        if (!this.nr.isFinishing()) return;
        if (this.md != null) {
            this.ca();
            this.rG.removeView(this.md);
            if (this.rx != null) {
                this.md.x(false);
                this.rx.rJ.addView((View)this.md, this.rx.index, this.rx.rI);
            }
        }
        if (this.rv == null) return;
        if (this.rv.rM == null) return;
        this.rv.rM.ac();
    }

    void bZ() {
        this.md.bZ();
    }

    public void c(int n, int n2, int n3, int n4) {
        if (this.rw == null) {
            this.rw = new do(this.nr, this.md);
            this.rG.addView((View)this.rw, 0, dk.a(n, n2, n3, n4));
            this.md.du().y(false);
        }
    }

    void ca() {
        this.md.ca();
    }

    public void close() {
        this.nr.finish();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void n(boolean bl) {
        int n = bl ? 50 : 32;
        this.ry = new dp(this.nr, n);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        n = bl ? 11 : 9;
        layoutParams.addRule(n);
        this.ry.o(this.rv.rQ);
        this.rG.addView((View)this.ry, layoutParams);
    }

    public void o(boolean bl) {
        if (this.ry != null) {
            this.ry.o(bl);
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    public void onCreate(Bundle var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    public void onDestroy() {
        if (this.rw != null) {
            this.rw.destroy();
        }
        if (this.md != null) {
            this.rG.removeView(this.md);
        }
        this.bY();
    }

    @Override
    public void onPause() {
        if (this.rw != null) {
            this.rw.pause();
        }
        this.bW();
        if (!(this.md == null || this.nr.isFinishing() && this.rx != null)) {
            gj.a(this.md);
        }
        this.bY();
    }

    @Override
    public void onRestart() {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onResume() {
        if (this.rv != null && this.rv.rT == 4) {
            if (this.rD) {
                this.nr.finish();
            } else {
                this.rD = true;
            }
        }
        if (this.md != null) {
            gj.b(this.md);
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.rD);
    }

    @Override
    public void onStart() {
    }

    @Override
    public void onStop() {
        this.bY();
    }

    /*
     * Enabled aggressive block sorting
     */
    void p(boolean bl) throws a {
        if (!this.rz) {
            this.nr.requestWindowFeature(1);
        }
        Object object = this.nr.getWindow();
        if (!this.rF || this.rv.rW.mh) {
            object.setFlags(1024, 1024);
        }
        this.setRequestedOrientation(this.rv.orientation);
        if (Build.VERSION.SDK_INT >= 11) {
            gs.S("Enabling hardware acceleration on the AdActivity window.");
            gn.a((Window)object);
        }
        this.rG = new b(this.nr, this.rv.rV);
        if (!this.rF) {
            this.rG.setBackgroundColor(-16777216);
        } else {
            this.rG.setBackgroundColor(ru);
        }
        this.nr.setContentView(this.rG);
        this.U();
        boolean bl2 = this.rv.rN.du().dE();
        if (bl) {
            this.md = gv.a(this.nr, this.rv.rN.Y(), true, bl2, null, this.rv.lD);
            this.md.du().a(null, null, this.rv.rO, this.rv.rS, true, this.rv.rU, this.rv.rN.du().dD());
            this.md.du().a(new gw.a(){

                @Override
                public void a(gv gv) {
                    gv.bZ();
                }
            });
            if (this.rv.rq != null) {
                this.md.loadUrl(this.rv.rq);
            } else {
                if (this.rv.rR == null) {
                    throw new a("No URL or HTML to display in ad overlay.");
                }
                this.md.loadDataWithBaseURL(this.rv.rP, this.rv.rR, "text/html", "UTF-8", null);
            }
        } else {
            this.md = this.rv.rN;
            this.md.setContext(this.nr);
        }
        this.md.a(this);
        object = this.md.getParent();
        if (object != null && object instanceof ViewGroup) {
            ((ViewGroup)object).removeView(this.md);
        }
        if (this.rF) {
            this.md.setBackgroundColor(ru);
        }
        this.rG.addView((View)this.md, -1, -1);
        if (!bl) {
            this.bZ();
        }
        this.n(bl2);
        if (this.md.dv()) {
            this.o(true);
        }
    }

    public void setRequestedOrientation(int n) {
        this.nr.setRequestedOrientation(n);
    }

    @ez
    private static final class a
    extends Exception {
        public a(String string) {
            super(string);
        }
    }

    @ez
    private static final class b
    extends RelativeLayout {
        private final gm ly;

        public b(Context context, String string) {
            super(context);
            this.ly = new gm(context, string);
        }

        @Override
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            this.ly.c(motionEvent);
            return false;
        }
    }

    @ez
    private static final class c {
        public final int index;
        public final ViewGroup.LayoutParams rI;
        public final ViewGroup rJ;

        public c(gv gv) throws a {
            this.rI = gv.getLayoutParams();
            ViewParent viewParent = gv.getParent();
            if (viewParent instanceof ViewGroup) {
                this.rJ = (ViewGroup)viewParent;
                this.index = this.rJ.indexOfChild(gv);
                this.rJ.removeView(gv);
                gv.x(true);
                return;
            }
            throw new a("Could not get the parent of the WebView for an overlay.");
        }
    }

}

