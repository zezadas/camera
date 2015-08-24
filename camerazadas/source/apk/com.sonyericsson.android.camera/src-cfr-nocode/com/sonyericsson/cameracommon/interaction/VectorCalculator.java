/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.interaction;

import android.graphics.PointF;

/*
 * Exception performing whole class analysis ignored.
 */
public class VectorCalculator {
    private static final float PARALLEL_ANGLE_FORWARD_DIRECTION = 0.0f;
    private static final float PARALLEL_ANGLE_INVERSE_DIRECTION = 3.1415927f;
    private static final float PARALLEL_ANGLE_TOLERANCE = 1.0471976f;
    private static final float RIGHT_ANGLE = 1.5707964f;
    private static final float RIGHT_ANGLE_TOLERANCE = 1.0471976f;

    public VectorCalculator();

    public static float getRadianFrom2Vector(PointF var0, PointF var1);

    private static boolean isNearlyEquals(float var0, float var1, float var2);

    public static boolean isParallel(PointF var0, PointF var1);

    public static boolean isSquare(PointF var0, PointF var1);
}

