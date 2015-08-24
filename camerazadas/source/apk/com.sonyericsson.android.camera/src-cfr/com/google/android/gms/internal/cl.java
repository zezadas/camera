/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.ez;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public final class cl {
    public final String pW;
    public final String pX;
    public final List<String> pY;
    public final String pZ;
    public final String qa;
    public final List<String> qb;
    public final String qc;

    /*
     * Enabled aggressive block sorting
     */
    public cl(JSONObject object) throws JSONException {
        Object var4_2 = null;
        this.pX = object.getString("id");
        Object object2 = object.getJSONArray("adapters");
        ArrayList<String> arrayList = new ArrayList<String>(object2.length());
        for (int i = 0; i < object2.length(); ++i) {
            arrayList.add(object2.getString(i));
        }
        this.pY = Collections.unmodifiableList(arrayList);
        this.pZ = object.optString("allocation_id", null);
        this.qb = cr.a((JSONObject)object, "imp_urls");
        object2 = object.optJSONObject("ad");
        object2 = object2 != null ? object2.toString() : null;
        this.pW = object2;
        object2 = object.optJSONObject("data");
        object = object2 != null ? object2.toString() : null;
        this.qc = object;
        object = var4_2;
        if (object2 != null) {
            object = object2.optString("class_name");
        }
        this.qa = object;
    }
}

