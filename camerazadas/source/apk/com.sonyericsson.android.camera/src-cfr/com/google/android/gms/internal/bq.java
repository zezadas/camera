/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.u;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public class bq {
    private u pw;
    private ah px;
    private JSONObject py;

    public bq(u u, ah ah, JSONObject jSONObject) {
        this.pw = u;
        this.px = ah;
        this.py = jSONObject;
    }

    public void as() {
        this.pw.aj();
    }

    public void b(String object, int n) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset", n);
            jSONObject.put("template", object);
            object = new JSONObject();
            object.put("ad", this.py);
            object.put("click", jSONObject);
            this.px.a("google.afma.nativeAds.handleClick", (JSONObject)object);
            return;
        }
        catch (JSONException var1_2) {
            gs.b("Unable to create click JSON.", var1_2);
            return;
        }
    }

    public static interface a {
        public void a(bq var1);
    }

}

