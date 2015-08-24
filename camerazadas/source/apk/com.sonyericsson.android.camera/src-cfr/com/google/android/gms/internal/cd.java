/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.by;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

@ez
public final class cd
implements by {
    private final bz pL;
    private final v pM;

    public cd(bz bz, v v) {
        this.pL = bz;
        this.pM = v;
    }

    private static boolean b(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int c(Map<String, String> object) {
        if ((object = object.get("o")) != null) {
            if ("p".equalsIgnoreCase((String)object)) {
                return gj.dm();
            }
            if ("l".equalsIgnoreCase((String)object)) {
                return gj.dl();
            }
        }
        return -1;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void a(gv object, Map<String, String> arrstring) {
        String string = (String)arrstring.get("a");
        if (string == null) {
            gs.W("Action missing from an open GMSG.");
            return;
        }
        if (!(this.pM == null || this.pM.av())) {
            this.pM.d((String)arrstring.get("u"));
            return;
        }
        gw gw = object.du();
        if ("expand".equalsIgnoreCase(string)) {
            if (object.dy()) {
                gs.W("Cannot expand WebView that is already expanded.");
                return;
            }
            gw.a(cd.b(arrstring), cd.c(arrstring));
            return;
        }
        if ("webapp".equalsIgnoreCase(string)) {
            object = (String)arrstring.get("u");
            if (object != null) {
                gw.a(cd.b(arrstring), cd.c(arrstring), (String)object);
                return;
            }
            gw.a(cd.b(arrstring), cd.c(arrstring), (String)arrstring.get("html"), (String)arrstring.get("baseurl"));
            return;
        }
        if (!"in_app_purchase".equalsIgnoreCase(string)) {
            gw.a(new dj((String)arrstring.get("i"), (String)arrstring.get("u"), (String)arrstring.get("m"), (String)arrstring.get("p"), (String)arrstring.get("c"), (String)arrstring.get("f"), (String)arrstring.get("e")));
            return;
        }
        object = (String)arrstring.get("product_id");
        arrstring = (String)arrstring.get("report_urls");
        if (this.pL == null) return;
        {
            if (!(arrstring == null || arrstring.isEmpty())) {
                arrstring = arrstring.split(" ");
                this.pL.a((String)object, new ArrayList<String>(Arrays.asList(arrstring)));
                return;
            }
        }
        this.pL.a((String)object, new ArrayList<String>());
    }
}

