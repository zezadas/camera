/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.cr;
import com.google.android.gms.tagmanager.di;
import com.google.android.gms.tagmanager.m;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ba {
    public static cr.c cG(String object) throws JSONException {
        object = ba.n(new JSONObject((String)object));
        cr.d d = cr.c.oX();
        for (int i = 0; i < object.gx.length; ++i) {
            d.a(cr.a.oT().b(b.df.toString(), object.gx[i]).b(b.cU.toString(), di.cX(m.nQ())).b(m.nR(), object.gy[i]).oW());
        }
        return d.pa();
    }

    private static d.a n(Object object) throws JSONException {
        return di.u(ba.o(object));
    }

    static Object o(Object hashMap) throws JSONException {
        if (hashMap instanceof JSONArray) {
            throw new RuntimeException("JSONArrays are not supported");
        }
        if (JSONObject.NULL.equals(hashMap)) {
            throw new RuntimeException("JSON nulls are not supported");
        }
        HashMap<String, Object> hashMap2 = hashMap;
        if (hashMap instanceof JSONObject) {
            hashMap = (JSONObject)hashMap;
            hashMap2 = new HashMap<String, Object>();
            Iterator<String> iterator = hashMap.keys();
            while (iterator.hasNext()) {
                String string = iterator.next();
                hashMap2.put(string, ba.o(hashMap.get(string)));
            }
        }
        return hashMap2;
    }
}

