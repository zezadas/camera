/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;

@ez
public class v {
    private a lZ;
    private boolean ma;
    private boolean mb;

    public v() {
        boolean bl = false;
        Bundle bundle = gb.bD();
        boolean bl2 = bl;
        if (bundle != null) {
            bl2 = bl;
            if (bundle.getBoolean("gads:block_autoclicks", false)) {
                bl2 = true;
            }
        }
        this.mb = bl2;
    }

    public v(boolean bl) {
        this.mb = bl;
    }

    public void a(a a) {
        this.lZ = a;
    }

    public void ar() {
        this.ma = true;
    }

    public boolean av() {
        if (!this.mb || this.ma) {
            return true;
        }
        return false;
    }

    public void d(String string) {
        gs.S("Action was blocked because no click was detected.");
        if (this.lZ != null) {
            this.lZ.e(string);
        }
    }

    public static interface a {
        public void e(String var1);
    }

    @ez
    public static class b
    implements a {
        private final fz.a mc;
        private final gv md;

        public b(fz.a a, gv gv) {
            this.mc = a;
            this.md = gv;
        }

        @Override
        public void e(String string) {
            gs.S("An auto-clicking creative is blocked");
            Uri.Builder builder = new Uri.Builder();
            builder.scheme("https");
            builder.path("//pagead2.googlesyndication.com/pagead/gen_204");
            builder.appendQueryParameter("id", "gmob-apps-blocked-navigation");
            if (!TextUtils.isEmpty((CharSequence)string)) {
                builder.appendQueryParameter("navigationURL", string);
            }
            if (!(this.mc == null || this.mc.vw == null || TextUtils.isEmpty((CharSequence)this.mc.vw.tN))) {
                builder.appendQueryParameter("debugDialog", this.mc.vw.tN);
            }
            gj.c(this.md.getContext(), this.md.dx().wD, builder.toString());
        }
    }

}

