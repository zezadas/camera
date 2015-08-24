/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gf;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;

@ez
public final class ft {
    private gv md;
    private final Object mw = new Object();
    private String uq;
    private gk<fv> ur = new gk();
    public final by us;
    public final by ut;

    public ft(String string) {
        this.us = new by(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(gv object, Map<String, String> object2) {
                object = ft.this.mw;
                synchronized (object) {
                    if (ft.this.ur.isDone()) {
                        return;
                    }
                    object2 = new fv(1, (Map<String, String>)object2);
                    gs.W("Invalid " + object2.getType() + " request error: " + object2.cL());
                    ft.this.ur.a(object2);
                    return;
                }
            }
        };
        this.ut = new by(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(gv object, Map<String, String> map) {
                Object object2 = ft.this.mw;
                synchronized (object2) {
                    if (ft.this.ur.isDone()) {
                        return;
                    }
                    fv fv = new fv(-2, map);
                    String string = fv.getUrl();
                    if (string == null) {
                        gs.W("URL missing in loadAdUrl GMSG.");
                        return;
                    }
                    if (string.contains((CharSequence)"%40mediation_adapters%40")) {
                        object = string.replaceAll("%40mediation_adapters%40", gf.a(object.getContext(), map.get("check_adapters"), ft.this.uq));
                        fv.setUrl((String)object);
                        gs.V("Ad request URL modified to " + (String)object);
                    }
                    ft.this.ur.a(fv);
                    return;
                }
            }
        };
        this.uq = string;
    }

    public void b(gv gv) {
        this.md = gv;
    }

    public Future<fv> cK() {
        return this.ur;
    }

}

