/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

public class ArraysUtil {
    private static final String TAG = ArraysUtil.class.getSimpleName();

    public static void swap(float[] arrf, int n, int n2) {
        float f = arrf[n2];
        arrf[n2] = arrf[n];
        arrf[n] = f;
    }
}

