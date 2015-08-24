/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public final class cr {
    public static List<String> a(JSONObject object, String object2) throws JSONException {
        if ((object = object.optJSONArray((String)object2)) != null) {
            object2 = new ArrayList(object.length());
            for (int i = 0; i < object.length(); ++i) {
                object2.add(object.getString(i));
            }
            return Collections.unmodifiableList(object2);
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Context context, String string, fz fz, String string2, boolean bl, List<String> object) {
        String string3 = bl ? "1" : "0";
        Iterator iterator = object.iterator();
        while (iterator.hasNext()) {
            String string4;
            object = string4 = ((String)iterator.next()).replaceAll("@gw_adlocid@", string2).replaceAll("@gw_adnetrefresh@", string3).replaceAll("@gw_qdata@", fz.vq.qi).replaceAll("@gw_sdkver@", string).replaceAll("@gw_sessid@", gb.vK).replaceAll("@gw_seqnum@", fz.tA);
            if (fz.qy != null) {
                object = string4.replaceAll("@gw_adnetid@", fz.qy.pX).replaceAll("@gw_allocid@", fz.qy.pZ);
            }
            new gq(context, string, (String)object).start();
        }
        return;
    }
}

