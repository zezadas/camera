/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.ay;
import java.util.Map;

class d
implements DataLayer.b {
    private final Context lB;

    public d(Context context) {
        this.lB = context;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void D(Map<String, Object> object) {
        Object v = object.get("gtm.url");
        object = v == null && (object = object.get("gtm")) != null && object instanceof Map ? ((Map)object).get("url") : v;
        if (!(object != null && object instanceof String && (object = Uri.parse((String)object).getQueryParameter("referrer")) != null)) {
            return;
        }
        ay.f(this.lB, (String)object);
    }
}

