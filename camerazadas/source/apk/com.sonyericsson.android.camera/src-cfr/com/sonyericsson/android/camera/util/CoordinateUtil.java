/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.DisplayMetrics;

public final class CoordinateUtil {
    private static final float ROUNDING = 0.5f;
    private static final String TAG = "CoordinateUtil";

    public static int convertAbsolutePosition2Relative(int n, int n2) {
        return n * 100 / n2;
    }

    public static Rect convertDev2View(Rect rect, Rect rect2, int n) {
        Rect rect3 = new Rect(rect);
        if (n == 1) {
            rect3.left = rect2.height() - rect.bottom;
            rect3.top = rect.left;
            rect3.right = rect2.height() - rect.top;
            rect3.bottom = rect.right;
        }
        return rect3;
    }

    public static int convertDip2Px(Context context, int n) {
        float f = context.getResources().getDisplayMetrics().density;
        return (int)((float)n * f + 0.5f);
    }

    public static Point convertDip2Px(Context context, Point point) {
        float f = context.getResources().getDisplayMetrics().density;
        return new Point((int)((float)point.x * f + 0.5f), (int)((float)point.y * f + 0.5f));
    }

    public static Rect convertDip2Px(Context context, Rect rect) {
        float f = context.getResources().getDisplayMetrics().density;
        return new Rect((int)((float)rect.left * f + 0.5f), (int)((float)rect.top * f + 0.5f), (int)((float)rect.right * f + 0.5f), (int)((float)rect.bottom * f + 0.5f));
    }

    public static Rect convertPositionToAligned(int n, int n2, Rect rect, Rect rect2, int n3, int n4) {
        if (rect == null) {
            return new Rect();
        }
        if (rect2 == null) {
            return new Rect();
        }
        if (rect.contains(n, n2)) {
            int n5 = rect.left;
            int n6 = rect.top;
            int n7 = n3 / 2;
            int n8 = n4 / 2;
            rect = new Rect(rect2.left - n5, rect2.top - n6, rect2.right - n5 - n3, rect2.bottom - n6 - n4);
            n = Math.max(rect.left, Math.min(rect.right, n - n5 - n7));
            n2 = Math.max(rect.top, Math.min(rect.bottom, n2 - n6 - n8));
            return new Rect(n, n2, n + n3, n2 + n4);
        }
        return new Rect();
    }

    public static Rect[] convertPositionToSurface(RectF[] arrrectF, int n, int n2, int n3) {
        Rect[] arrrect = new Rect[arrrectF.length];
        for (n3 = 0; n3 < arrrectF.length; ++n3) {
            int n4 = (int)(arrrectF[n3].centerX() * (float)n);
            int n5 = (int)(arrrectF[n3].centerY() * (float)n2);
            int n6 = (int)(arrrectF[n3].width() * (float)n);
            int n7 = (int)(arrrectF[n3].height() * (float)n2);
            arrrect[n3] = new Rect(n4 - n6 / 2, n5 - n7 / 2, n6 / 2 + n4, n7 / 2 + n5);
        }
        return arrrect;
    }

    public static int convertPx2Dip(Context context, int n) {
        float f = context.getResources().getDisplayMetrics().density;
        return (int)((float)n / f + 0.5f);
    }

    public static Point convertPx2Dip(Context context, Point point) {
        float f = context.getResources().getDisplayMetrics().density;
        return new Point((int)((float)point.x / f + 0.5f), (int)((float)point.y / f + 0.5f));
    }

    public static Rect convertPx2Dip(Context context, Rect rect) {
        float f = context.getResources().getDisplayMetrics().density;
        return new Rect((int)((float)rect.left / f + 0.5f), (int)((float)rect.top / f + 0.5f), (int)((float)rect.right / f + 0.5f), (int)((float)rect.bottom / f + 0.5f));
    }

    public static Rect convertView2Dev(Rect rect, Rect rect2, int n) {
        Rect rect3 = new Rect(rect);
        if (n == 1) {
            rect3.left = rect.top;
            rect3.top = rect2.height() - rect.right;
            rect3.right = rect.bottom;
            rect3.bottom = rect2.height() - rect.left;
        }
        return rect3;
    }

    public static Rect scale(Rect rect, Rect rect2, Rect rect3) {
        int n = rect2.height();
        int n2 = rect2.width();
        int n3 = rect3.height();
        int n4 = rect3.width();
        int n5 = rect.top * n3 / n;
        int n6 = rect.left * n4 / n2;
        n = rect.bottom * n3 / n;
        return new Rect(n6, n5, rect.right * n4 / n2, n);
    }

    public static Rect scale2Dev(Rect rect, Rect rect2, Rect rect3) {
        int n = rect2.height();
        int n2 = rect2.width();
        int n3 = rect3.height();
        int n4 = rect3.width();
        double d = (double)n2 / (double)n4;
        double d2 = (double)n / (double)n3;
        double d3 = rect.top;
        double d4 = rect.left;
        double d5 = rect.bottom;
        double d6 = rect.right;
        return new Rect((int)(d4 * d), (int)(d3 * d2), (int)(d6 * d), (int)(d5 * d2));
    }
}

