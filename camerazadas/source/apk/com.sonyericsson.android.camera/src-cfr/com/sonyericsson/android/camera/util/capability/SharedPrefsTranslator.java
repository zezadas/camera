/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SharedPrefsTranslator {
    public static final String CONNECTOR = "x";
    public static final String DELIMITER = ";";
    private static final String TAG = "SharedPrefsTranslator";

    public static final String fromIntArrayList(List<int[]> object) {
        Object object2;
        Object object3 = object2 = "";
        if (object != null) {
            object3 = object2;
            if (!object.isEmpty()) {
                object3 = new StringBuilder();
                object3.append(object.size());
                object = object.iterator();
                while (object.hasNext()) {
                    object2 = (int[])object.next();
                    if (object2.length != 2) continue;
                    object3.append(";");
                    Object object4 = object2[0];
                    Object object5 = object2[1];
                    object3.append(String.valueOf((int)object4)).append("x").append(String.valueOf((int)object5));
                }
                object3 = object3.toString();
            }
        }
        return object3;
    }

    public static final String fromRect(Rect rect) {
        Object object = "";
        if (rect != null) {
            object = new StringBuilder();
            object.append(rect.width()).append("x").append(rect.height());
            object = object.toString();
        }
        return object;
    }

    public static final String fromRectList(List<Rect> object) {
        Object object22;
        Object object3 = object22 = "";
        if (object != null) {
            object3 = object22;
            if (!object.isEmpty()) {
                object3 = new StringBuilder();
                object3.append(object.size());
                for (Object object22 : object) {
                    object3.append(";");
                    object3.append(object22.width()).append("x").append(object22.height());
                }
                object3 = object3.toString();
            }
        }
        return object3;
    }

    public static final String fromStringList(List<String> object) {
        String string2;
        Object object2 = string2 = "";
        if (object != null) {
            object2 = string2;
            if (!object.isEmpty()) {
                object2 = new StringBuilder();
                object2.append(object.size());
                for (String string2 : object) {
                    object2.append(";").append(string2);
                }
                object2 = object2.toString();
            }
        }
        return object2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static final int[] getIntArray(String arrstring) {
        int[] arrn = new int[2];
        if (arrstring == null || (arrstring = arrstring.split("x")).length != 2) return arrn;
        try {
            arrn[0] = Integer.parseInt(arrstring[0]);
            arrn[1] = Integer.parseInt(arrstring[1]);
        }
        catch (NumberFormatException numberFormatException) {
            return new int[0];
        }
        return arrn;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static final List<int[]> getIntArrayList(String arrstring) {
        int n;
        ArrayList<int[]> arrayList = new ArrayList<int[]>();
        if (arrstring == null || arrstring.isEmpty()) return arrayList;
        arrstring = arrstring.split(";");
        try {
            if (Integer.parseInt(arrstring[0]) <= 0) return arrayList;
            n = arrstring.length;
        }
        catch (NumberFormatException var0_1) {
            arrayList.clear();
        }
        for (int i = 0; i < n; ++i) {
            arrayList.add(SharedPrefsTranslator.getIntArray(arrstring[i]));
            continue;
        }
        return arrayList;
        return arrayList;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static final Rect getRect(String arrstring) {
        Rect rect = new Rect();
        if (arrstring == null || (arrstring = arrstring.split("x")).length != 2) return rect;
        try {
            rect.right = Integer.parseInt(arrstring[0]);
            rect.bottom = Integer.parseInt(arrstring[1]);
        }
        catch (NumberFormatException numberFormatException) {
            rect.setEmpty();
            return rect;
        }
        return rect;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static final List<Rect> getRectList(String arrstring) {
        int n;
        ArrayList<Rect> arrayList = new ArrayList<Rect>();
        if (arrstring == null || arrstring.isEmpty()) return arrayList;
        arrstring = arrstring.split(";");
        try {
            if (Integer.parseInt(arrstring[0]) <= 0) return arrayList;
            n = arrstring.length;
        }
        catch (NumberFormatException var0_1) {
            arrayList.clear();
        }
        for (int i = 0; i < n; ++i) {
            arrayList.add(SharedPrefsTranslator.getRect(arrstring[i]));
            continue;
        }
        return arrayList;
        return arrayList;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static final List<String> getStringList(String arrstring) {
        int n;
        ArrayList<String> arrayList = new ArrayList<String>();
        if (arrstring == null || arrstring.isEmpty()) return arrayList;
        arrstring = arrstring.split(";");
        try {
            if (Integer.parseInt(arrstring[0]) <= 0) return arrayList;
            n = arrstring.length;
        }
        catch (NumberFormatException var0_1) {
            arrayList.clear();
        }
        for (int i = 0; i < n; ++i) {
            arrayList.add(arrstring[i]);
            continue;
        }
        return arrayList;
        return arrayList;
    }
}

