/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.t;
import com.google.android.gms.internal.v;
import org.json.JSONObject;

@ez
public class aj
implements ah {
    private final gv md;

    public aj(Context context, gt gt) {
        this.md = gv.a(context, new ay(), false, false, null, gt);
    }

    private void runOnUiThread(Runnable runnable) {
        if (gr.ds()) {
            runnable.run();
            return;
        }
        gr.wC.post(runnable);
    }

    @Override
    public void a(final ah.a a) {
        this.md.du().a(new gw.a(){

            @Override
            public void a(gv gv) {
                a.aM();
            }
        });
    }

    @Override
    public void a(t t, dn dn, bw bw, dq dq, boolean bl, bz bz) {
        this.md.du().a(t, dn, bw, dq, bl, bz, new v(false));
    }

    @Override
    public void a(String string, by by) {
        this.md.du().a(string, by);
    }

    @Override
    public void a(final String string, final JSONObject jSONObject) {
        this.runOnUiThread(new Runnable(){

            @Override
            public void run() {
                aj.this.md.a(string, jSONObject);
            }
        });
    }

    @Override
    public void destroy() {
        this.md.destroy();
    }

    @Override
    public void f(final String string) {
        this.runOnUiThread(new Runnable(){

            @Override
            public void run() {
                aj.this.md.loadUrl(string);
            }
        });
    }

    @Override
    public void g(String string) {
        this.md.du().a(string, null);
    }

    @Override
    public void pause() {
        gj.a(this.md);
    }

    @Override
    public void resume() {
        gj.b(this.md);
    }

}

