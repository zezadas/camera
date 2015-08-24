/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import android.graphics.PointF;

public class Vector2dUtil {
    private static float crossProduct(PointF pointF, PointF pointF2) {
        return pointF2.x * pointF.y - pointF.x * pointF2.y;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void getCrossPoint(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4, PointF pointF5) {
        PointF pointF6 = new PointF();
        pointF6.x = pointF2.x - pointF.x;
        pointF6.y = pointF2.y - pointF.y;
        pointF2 = new PointF();
        pointF2.x = pointF4.x - pointF3.x;
        pointF2.y = pointF4.y - pointF3.y;
        pointF4 = new PointF();
        pointF4.x = pointF3.x - pointF.x;
        pointF4.y = pointF3.y - pointF.y;
        float f = Vector2dUtil.crossProduct(pointF2, pointF6);
        float f2 = Vector2dUtil.crossProduct(pointF2, pointF4);
        f = Math.abs(f) <= 0.0f ? 0.0f : f2 / f;
        pointF5.x = pointF6.x * f + pointF.x;
        pointF5.y = pointF6.y * f + pointF.y;
    }

    public static float getDistanceFromSegment(PointF pointF, PointF pointF2, float f, float f2) {
        PointF pointF3 = new PointF();
        pointF3.x = pointF2.x - pointF.x;
        pointF3.y = pointF2.y - pointF.y;
        pointF2 = new PointF();
        pointF2.x = f - pointF.x;
        pointF2.y = f2 - pointF.y;
        return Vector2dUtil.crossProduct(pointF3, pointF2) / Vector2dUtil.length(pointF3);
    }

    public static boolean isLeftSide(PointF pointF, PointF pointF2, float f, float f2) {
        float f3 = pointF2.x;
        float f4 = pointF.x;
        float f5 = pointF.x;
        float f6 = pointF2.y;
        float f7 = pointF.y;
        if ((double)((f3 - f4) * (f2 - pointF.y) - (f - f5) * (f6 - f7)) > 0.0) {
            return true;
        }
        return false;
    }

    public static float length(PointF pointF) {
        return (float)Math.sqrt(pointF.x * pointF.x + pointF.y * pointF.y);
    }

    public static float limit(float f, float f2, float f3) {
        if (f < f2) {
            return f2;
        }
        if (f > f3) {
            return f3;
        }
        return f;
    }
}

