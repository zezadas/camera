/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.w;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class x {
    static String a(w w, long l) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(w.eF());
        if (w.eH() > 0 && (l-=w.eH()) >= 0) {
            stringBuilder.append("&qt").append("=").append(l);
        }
        stringBuilder.append("&z").append("=").append(w.eG());
        return stringBuilder.toString();
    }

    static String encode(String string) {
        try {
            String string2 = URLEncoder.encode(string, "UTF-8");
            return string2;
        }
        catch (UnsupportedEncodingException var1_2) {
            throw new AssertionError((Object)("URL encoding failed for: " + string));
        }
    }

    static Map<String, String> z(Map<String, String> object) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        for (Map.Entry entry : object.entrySet()) {
            String string;
            if (!((String)entry.getKey()).startsWith("&") || entry.getValue() == null || TextUtils.isEmpty((CharSequence)(string = ((String)entry.getKey()).substring(1)))) continue;
            hashMap.put(string, (String)entry.getValue());
        }
        return hashMap;
    }
}

