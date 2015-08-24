/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.ha;

@ez
public class fc
implements Runnable {
    private final int lf;
    private final int lg;
    protected final gv md;
    private final Handler td;
    private final long te;
    private long tf;
    private gw.a tg;
    protected boolean th;
    protected boolean ti;

    public fc(gw.a a, gv gv, int n, int n2) {
        this(a, gv, n, n2, 200, 50);
    }

    public fc(gw.a a, gv gv, int n, int n2, long l, long l2) {
        this.te = l;
        this.tf = l2;
        this.td = new Handler(Looper.getMainLooper());
        this.md = gv;
        this.tg = a;
        this.th = false;
        this.ti = false;
        this.lg = n2;
        this.lf = n;
    }

    static /* synthetic */ long c(fc fc) {
        long l;
        fc.tf = l = fc.tf - 1;
        return l;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void a(fk fk, ha object) {
        this.md.setWebViewClient((WebViewClient)object);
        gv gv = this.md;
        object = TextUtils.isEmpty((CharSequence)fk.rP) ? null : gj.L(fk.rP);
        gv.loadDataWithBaseURL((String)object, fk.tG, "text/html", "UTF-8", null);
    }

    public void b(fk fk) {
        this.a(fk, new ha(this, this.md, fk.tP));
    }

    public boolean cA() {
        synchronized (this) {
            boolean bl = this.th;
            return bl;
        }
    }

    public boolean cB() {
        return this.ti;
    }

    public void cy() {
        this.td.postDelayed(this, this.te);
    }

    public void cz() {
        synchronized (this) {
            this.th = true;
            return;
        }
    }

    @Override
    public void run() {
        if (this.md == null || this.cA()) {
            this.tg.a(this.md);
            return;
        }
        new a(this.md).execute(new Void[0]);
    }

    protected final class a
    extends AsyncTask<Void, Void, Boolean> {
        private final WebView tj;
        private Bitmap tk;

        public a(WebView webView) {
            this.tj = webView;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        protected /* varargs */ Boolean a(Void ... object) {
            synchronized (this) {
                int n = this.tk.getWidth();
                int n2 = this.tk.getHeight();
                if (n == 0) return false;
                if (n2 == 0) {
                    return false;
                }
                int n3 = 0;
                int n4 = 0;
                do {
                    if (n3 < n) {
                    } else {
                        boolean bl = (double)n4 / ((double)(n * n2) / 100.0) > 0.1;
                        return bl;
                    }
                    for (int i = 0; i < n2; i+=10) {
                        int n5 = n4;
                        if (this.tk.getPixel(n3, i) != 0) {
                            n5 = n4 + 1;
                        }
                        n4 = n5;
                    }
                    n3+=10;
                } while (true);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        protected void a(Boolean bl) {
            fc.c(fc.this);
            if (bl.booleanValue() || fc.this.cA() || fc.this.tf <= 0) {
                fc.this.ti = bl;
                fc.this.tg.a(fc.this.md);
                return;
            } else {
                if (fc.this.tf <= 0) return;
                {
                    if (gs.u(2)) {
                        gs.S("Ad not detected, scheduling another run.");
                    }
                    fc.this.td.postDelayed(fc.this, fc.this.te);
                    return;
                }
            }
        }

        @Override
        protected /* synthetic */ Object doInBackground(Object[] arrobject) {
            return this.a((Void[])arrobject);
        }

        @Override
        protected /* synthetic */ void onPostExecute(Object object) {
            this.a((Boolean)object);
        }

        @Override
        protected void onPreExecute() {
            synchronized (this) {
                this.tk = Bitmap.createBitmap(fc.this.lf, fc.this.lg, Bitmap.Config.ARGB_8888);
                this.tj.setVisibility(0);
                this.tj.measure(View.MeasureSpec.makeMeasureSpec(fc.this.lf, 0), View.MeasureSpec.makeMeasureSpec(fc.this.lg, 0));
                this.tj.layout(0, 0, fc.this.lf, fc.this.lg);
                Canvas canvas = new Canvas(this.tk);
                this.tj.draw(canvas);
                this.tj.invalidate();
                return;
            }
        }
    }

}

