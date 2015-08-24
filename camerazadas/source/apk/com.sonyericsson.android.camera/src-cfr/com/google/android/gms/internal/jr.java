/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import java.util.ArrayList;

public final class jr {
    public static void a(StringBuilder stringBuilder, double[] arrd) {
        int n = arrd.length;
        for (int i = 0; i < n; ++i) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Double.toString(arrd[i]));
        }
    }

    public static void a(StringBuilder stringBuilder, float[] arrf) {
        int n = arrf.length;
        for (int i = 0; i < n; ++i) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Float.toString(arrf[i]));
        }
    }

    public static void a(StringBuilder stringBuilder, int[] arrn) {
        int n = arrn.length;
        for (int i = 0; i < n; ++i) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Integer.toString(arrn[i]));
        }
    }

    public static void a(StringBuilder stringBuilder, long[] arrl) {
        int n = arrl.length;
        for (int i = 0; i < n; ++i) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(arrl[i]));
        }
    }

    public static <T> void a(StringBuilder stringBuilder, T[] arrT) {
        int n = arrT.length;
        for (int i = 0; i < n; ++i) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(arrT[i].toString());
        }
    }

    public static void a(StringBuilder stringBuilder, String[] arrstring) {
        int n = arrstring.length;
        for (int i = 0; i < n; ++i) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append("\"").append(arrstring[i]).append("\"");
        }
    }

    public static void a(StringBuilder stringBuilder, boolean[] arrbl) {
        int n = arrbl.length;
        for (int i = 0; i < n; ++i) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Boolean.toString(arrbl[i]));
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Integer[] a(int[] arrn) {
        if (arrn == null) {
            return null;
        }
        int n = arrn.length;
        Integer[] arrinteger = new Integer[n];
        int n2 = 0;
        do {
            Integer[] arrinteger2 = arrinteger;
            if (n2 >= n) return arrinteger2;
            arrinteger[n2] = arrn[n2];
            ++n2;
        } while (true);
    }

    public static <T> ArrayList<T> b(T[] arrT) {
        int n = arrT.length;
        ArrayList<T> arrayList = new ArrayList<T>(n);
        for (int i = 0; i < n; ++i) {
            arrayList.add(arrT[i]);
        }
        return arrayList;
    }

    public static <T> ArrayList<T> hz() {
        return new ArrayList();
    }
}

