/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.interaction;

import android.graphics.PointF;

public class VectorCalculator {
    private static final float PARALLEL_ANGLE_FORWARD_DIRECTION = 0.0f;
    private static final float PARALLEL_ANGLE_INVERSE_DIRECTION = 3.1415927f;
    private static final float PARALLEL_ANGLE_TOLERANCE = 1.0471976f;
    private static final float RIGHT_ANGLE = 1.5707964f;
    private static final float RIGHT_ANGLE_TOLERANCE = 1.0471976f;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static float getRadianFrom2Vector(PointF pointF, PointF pointF2) {
        float f;
        float f2 = f = 0.0f;
        if (0.0f >= pointF.length()) return f2;
        f2 = f;
        if (0.0f >= pointF2.length()) return f2;
        f = (pointF.x * pointF2.x + pointF.y * pointF2.y) / pointF.length() / pointF2.length();
        if (f < -1.0f) {
            f2 = -1.0f;
            do {
                return (float)Math.acos(f2);
                break;
            } while (true);
        }
        f2 = f;
        if (1.0f >= f) return (float)Math.acos(f2);
        f2 = 1.0f;
        return (float)Math.acos(f2);
    }

    private static boolean isNearlyEquals(float f, float f2, float f3) {
        if (Math.abs(f - f2) < f3) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isParallel(PointF pointF, PointF pointF2) {
        float f = VectorCalculator.getRadianFrom2Vector(pointF, pointF2);
        if (VectorCalculator.isNearlyEquals(3.1415927f, f, 1.0471976f) || VectorCalculator.isNearlyEquals(0.0f, f, 1.0471976f)) {
            return true;
        }
        return false;
    }

    public static boolean isSquare(PointF pointF, PointF pointF2) {
        float f = VectorCalculator.getRadianFrom2Vector(pointF, pointF2);
        if (0.5235988f < f && f < 2.6179938f) {
            return true;
        }
        return false;
    }
}

