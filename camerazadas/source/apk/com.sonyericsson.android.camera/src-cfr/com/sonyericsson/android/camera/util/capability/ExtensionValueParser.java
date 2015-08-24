/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.List;

public class ExtensionValueParser {
    public static final String CONNECTOR = "x";
    public static final String DELIMITER = ",";
    private static final String TAG = "ExtensionValueParser";

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static final boolean getBoolean(String string) {
        boolean bl;
        boolean bl2 = bl = false;
        if (string == null) return bl2;
        if (string.indexOf("on") != -1) {
            return true;
        }
        bl2 = bl;
        if (string.indexOf("true") == -1) return bl2;
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static final int getInt(String string) {
        int n = 0;
        if (string == null) return n;
        try {
            return Integer.valueOf(string);
        }
        catch (NumberFormatException numberFormatException) {
            return 0;
        }
    }

    public static final Rect getRect(String arrstring) {
        Rect rect;
        Rect rect2 = rect = null;
        if (arrstring != null) {
            arrstring = arrstring.split("x");
            rect2 = rect;
            if (arrstring.length == 2) {
                rect2 = new Rect();
                rect2.right = Integer.valueOf(arrstring[0]);
                rect2.bottom = Integer.valueOf(arrstring[1]);
            }
        }
        return rect2;
    }

    public static final List<String> getStringList(String arrstring) {
        ArrayList<String> arrayList = new ArrayList<String>();
        if (arrstring != null) {
            arrstring = arrstring.split(",");
            int n = arrstring.length;
            for (int i = 0; i < n; ++i) {
                arrayList.add(arrstring[i]);
            }
        }
        return arrayList;
    }
}

