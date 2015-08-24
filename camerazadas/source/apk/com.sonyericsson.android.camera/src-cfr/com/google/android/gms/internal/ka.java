/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class ka {
    /*
     * Enabled aggressive block sorting
     */
    public static void a(StringBuilder stringBuilder, HashMap<String, String> hashMap) {
        stringBuilder.append("{");
        Iterator<String> iterator = hashMap.keySet().iterator();
        boolean bl = true;
        do {
            if (!iterator.hasNext()) {
                stringBuilder.append("}");
                return;
            }
            String string = iterator.next();
            if (!bl) {
                stringBuilder.append(",");
            } else {
                bl = false;
            }
            String string2 = hashMap.get(string);
            stringBuilder.append("\"").append(string).append("\":");
            if (string2 == null) {
                stringBuilder.append("null");
                continue;
            }
            stringBuilder.append("\"").append(string2).append("\"");
        } while (true);
    }
}

