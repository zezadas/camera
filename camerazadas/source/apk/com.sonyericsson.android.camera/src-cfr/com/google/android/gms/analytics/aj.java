/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.l;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

class aj {
    private static final char[] BJ = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    static String C(boolean bl) {
        if (bl) {
            return "1";
        }
        return "0";
    }

    public static double a(String string, double d) {
        if (string == null) {
            return d;
        }
        try {
            double d2 = Double.parseDouble(string);
            return d2;
        }
        catch (NumberFormatException var0_1) {
            return d;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static String a(Locale locale) {
        if (locale == null || TextUtils.isEmpty((CharSequence)locale.getLanguage())) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(locale.getLanguage().toLowerCase());
        if (!TextUtils.isEmpty((CharSequence)locale.getCountry())) {
            stringBuilder.append("-").append(locale.getCountry().toLowerCase());
        }
        return stringBuilder.toString();
    }

    public static void a(Map<String, String> map, String string, l l) {
        if (!map.containsKey(string)) {
            map.put(string, l.getValue(string));
        }
    }

    public static void a(Map<String, String> map, String string, String string2) {
        if (!map.containsKey(string)) {
            map.put(string, string2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Map<String, String> an(String arrstring) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        arrstring = arrstring.split("&");
        int n = arrstring.length;
        for (int i = 0; i < n; ++i) {
            String[] arrstring2 = arrstring[i].split("=");
            if (arrstring2.length > 1) {
                hashMap.put(arrstring2[0], arrstring2[1]);
                continue;
            }
            if (arrstring2.length != 1 || arrstring2[0].length() == 0) continue;
            hashMap.put(arrstring2[0], null);
        }
        return hashMap;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String ao(String map) {
        Object object;
        if (TextUtils.isEmpty(map)) {
            return null;
        }
        String[] arrstring = map;
        if (map.contains((CharSequence)"?")) {
            object = map.split("[\\?]");
            arrstring = map;
            if (object.length > 1) {
                arrstring = object[1];
            }
        }
        if (arrstring.contains((CharSequence)"%3D")) {
            try {
                map = URLDecoder.decode(arrstring, "UTF-8");
            }
            catch (UnsupportedEncodingException var0_1) {
                return null;
            }
        } else {
            map = arrstring;
            if (!arrstring.contains((CharSequence)"=")) {
                return null;
            }
        }
        map = aj.an((String)map);
        arrstring = new String[]{"dclid", "utm_source", "gclid", "utm_campaign", "utm_medium", "utm_term", "utm_content", "utm_id", "gmob_t"};
        object = new StringBuilder();
        for (int i = 0; i < arrstring.length; ++i) {
            if (TextUtils.isEmpty((CharSequence)map.get(arrstring[i]))) continue;
            if (object.length() > 0) {
                object.append("&");
            }
            object.append(arrstring[i]).append("=").append(map.get(arrstring[i]));
        }
        return object.toString();
    }

    public static MessageDigest ap(String string) {
        for (int i = 0; i < 2; ++i) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(string);
                if (messageDigest == null) continue;
                return messageDigest;
            }
            catch (NoSuchAlgorithmException var2_3) {
                // empty catch block
            }
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean e(String string, boolean bl) {
        boolean bl2 = bl;
        if (string == null) return bl2;
        if (string.equalsIgnoreCase("true")) return true;
        if (string.equalsIgnoreCase("yes")) return true;
        if (string.equalsIgnoreCase("1")) {
            return true;
        }
        if (string.equalsIgnoreCase("false")) return false;
        if (string.equalsIgnoreCase("no")) return false;
        bl2 = bl;
        if (!string.equalsIgnoreCase("0")) return bl2;
        return false;
    }
}

