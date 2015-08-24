/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.internal.ip;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class iu {
    private static final ip Gr = new ip("MetadataUtils");
    private static final String[] HA = new String[]{"Z", "+hh", "+hhmm", "+hh:mm"};
    private static final String HB = "yyyyMMdd'T'HHmmss" + HA[0];

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String a(Calendar object) {
        String string;
        if (object == null) {
            Gr.b("Calendar object cannot be null", new Object[0]);
            return null;
        }
        Object object2 = string = HB;
        if (object.get(11) == 0) {
            object2 = string;
            if (object.get(12) == 0) {
                object2 = string;
                if (object.get(13) == 0) {
                    object2 = "yyyyMMdd";
                }
            }
        }
        object2 = new SimpleDateFormat((String)object2);
        object2.setTimeZone(object.getTimeZone());
        object = object2 = object2.format(object.getTime());
        if (!object2.endsWith("+0000")) return object;
        return object2.replace((CharSequence)"+0000", (CharSequence)HA[0]);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static void a(List<WebImage> var0, JSONObject var1_2) {
        block5 : {
            try {
                var0.clear();
                var1_2 = var1_2.getJSONArray("images");
                var3_3 = var1_2.length();
                var2_4 = 0;
lbl6: // 2 sources:
                if (var2_4 >= var3_3) return;
                var4_5 = var1_2.getJSONObject(var2_4);
                var0.add(new WebImage(var4_5));
                break block5;
            }
            catch (JSONException var0_1) {
                // empty catch block
            }
            return;
            catch (IllegalArgumentException var4_6) {}
        }
        ++var2_4;
        ** GOTO lbl6
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void a(JSONObject jSONObject, List<WebImage> iterator) {
        if (iterator == null || iterator.isEmpty()) return;
        JSONArray jSONArray = new JSONArray();
        iterator = iterator.iterator();
        while (iterator.hasNext()) {
            jSONArray.put(((WebImage)iterator.next()).bK());
        }
        try {
            jSONObject.put("images", jSONArray);
            return;
        }
        catch (JSONException var0_1) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static Calendar aL(String object) {
        if (TextUtils.isEmpty((CharSequence)object)) {
            Gr.b("Input string is empty or null", new Object[0]);
            return null;
        }
        Object object2 = iu.aM((String)object);
        if (TextUtils.isEmpty((CharSequence)object2)) {
            Gr.b("Invalid date format", new Object[0]);
            return null;
        }
        String string = iu.aN((String)object);
        object = "yyyyMMdd";
        String string2 = object2;
        if (!TextUtils.isEmpty((CharSequence)string)) {
            string2 = (String)object2 + "T" + string;
            object = string.length() == "HHmmss".length() ? "yyyyMMdd'T'HHmmss" : HB;
        }
        object2 = GregorianCalendar.getInstance();
        try {
            object = new SimpleDateFormat((String)object).parse(string2);
            object2.setTime((Date)object);
            return object2;
        }
        catch (ParseException var0_1) {
            Gr.b("Error parsing string: %s", var0_1.getMessage());
            return null;
        }
    }

    private static String aM(String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            Gr.b("Input string is empty or null", new Object[0]);
            return null;
        }
        try {
            string = string.substring(0, "yyyyMMdd".length());
            return string;
        }
        catch (IndexOutOfBoundsException var0_1) {
            Gr.c("Error extracting the date: %s", var0_1.getMessage());
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static String aN(String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            Gr.b("string is empty or null", new Object[0]);
            return null;
        }
        int n = string.indexOf(84);
        if (n != "yyyyMMdd".length()) {
            Gr.b("T delimeter is not found", new Object[0]);
            return null;
        }
        try {
            string = string.substring(n + 1);
        }
        catch (IndexOutOfBoundsException var0_1) {
            Gr.b("Error extracting the time substring: %s", var0_1.getMessage());
            return null;
        }
        if (string.length() == "HHmmss".length()) {
            return string;
        }
        switch (string.charAt("HHmmss".length())) {
            default: {
                return null;
            }
            case '+': 
            case '-': {
                if (!iu.aO(string)) return null;
                return string.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2");
            }
            case 'Z': {
                if (string.length() != "HHmmss".length() + HA[0].length()) return null;
                return string.substring(0, string.length() - 1) + "+0000";
            }
        }
    }

    private static boolean aO(String string) {
        int n = string.length();
        int n2 = "HHmmss".length();
        if (n == HA[1].length() + n2 || n == HA[2].length() + n2 || n == n2 + HA[3].length()) {
            return true;
        }
        return false;
    }
}

