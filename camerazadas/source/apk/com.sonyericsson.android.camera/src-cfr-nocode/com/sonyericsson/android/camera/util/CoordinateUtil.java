/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;

/*
 * Exception performing whole class analysis ignored.
 */
public final class CoordinateUtil {
    private static final float ROUNDING = 0.5f;
    private static final String TAG = "CoordinateUtil";

    public CoordinateUtil();

    public static int convertAbsolutePosition2Relative(int var0, int var1);

    public static Rect convertDev2View(Rect var0, Rect var1, int var2);

    public static int convertDip2Px(Context var0, int var1);

    public static Point convertDip2Px(Context var0, Point var1);

    public static Rect convertDip2Px(Context var0, Rect var1);

    public static Rect convertPositionToAligned(int var0, int var1, Rect var2, Rect var3, int var4, int var5);

    public static Rect[] convertPositionToSurface(RectF[] var0, int var1, int var2, int var3);

    public static int convertPx2Dip(Context var0, int var1);

    public static Point convertPx2Dip(Context var0, Point var1);

    public static Rect convertPx2Dip(Context var0, Rect var1);

    public static Rect convertView2Dev(Rect var0, Rect var1, int var2);

    public static Rect scale(Rect var0, Rect var1, Rect var2);

    public static Rect scale2Dev(Rect var0, Rect var1, Rect var2);
}

