/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public final class cm {
    public final List<cl> qd;
    public final long qe;
    public final List<String> qf;
    public final List<String> qg;
    public final List<String> qh;
    public final String qi;
    public final long qj;
    public int qk;
    public int ql;

    /*
     * Enabled aggressive block sorting
     */
    public cm(String object) throws JSONException {
        object = new JSONObject((String)object);
        if (gs.u(2)) {
            gs.V("Mediation Response JSON: " + object.toString(2));
        }
        JSONArray jSONArray = object.getJSONArray("ad_networks");
        ArrayList<cl> arrayList = new ArrayList<cl>(jSONArray.length());
        int n = -1;
        for (int i = 0; i < jSONArray.length(); ++i) {
            cl cl = new cl(jSONArray.getJSONObject(i));
            arrayList.add(cl);
            int n2 = n;
            if (n < 0) {
                n2 = n;
                if (this.a(cl)) {
                    n2 = i;
                }
            }
            n = n2;
        }
        this.qk = n;
        this.ql = jSONArray.length();
        this.qd = Collections.unmodifiableList(arrayList);
        this.qi = object.getString("qdata");
        if ((object = object.optJSONObject("settings")) == null) {
            this.qe = -1;
            this.qf = null;
            this.qg = null;
            this.qh = null;
            this.qj = -1;
            return;
        }
        this.qe = object.optLong("ad_network_timeout_millis", -1);
        this.qf = cr.a((JSONObject)object, "click_urls");
        this.qg = cr.a((JSONObject)object, "imp_urls");
        this.qh = cr.a((JSONObject)object, "nofill_urls");
        long l = object.optLong("refresh", -1);
        l = l > 0 ? (l*=1000) : -1;
        this.qj = l;
    }

    private boolean a(cl object) {
        object = object.pY.iterator();
        while (object.hasNext()) {
            if (!((String)object.next()).equals("com.google.ads.mediation.admob.AdMobAdapter")) continue;
            return true;
        }
        return false;
    }
}

