/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

public class RotationUtil {
    private static final String TAG = RotationUtil.class.getSimpleName();

    public static float getAngle(int n) {
        if (n == 1) {
            return -90.0f;
        }
        return 0.0f;
    }

    public static int getNormalizedRotation(int n) {
        if (45 < (n%=360) && n <= 135) {
            return 90;
        }
        if (135 <= n && n <= 225) {
            return 180;
        }
        if (225 <= n && n <= 315) {
            return 270;
        }
        return 0;
    }
}

