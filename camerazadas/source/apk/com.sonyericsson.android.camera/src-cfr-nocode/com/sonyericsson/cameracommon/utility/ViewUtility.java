/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;

/*
 * Exception performing whole class analysis ignored.
 */
public class ViewUtility {
    private static final float ASPECT_TOLERANCE = 0.001f;

    public ViewUtility();

    public static Point getCenter(Point var0, Point var1);

    public static Rect getEstimatedRealScreenRect(Context var0);

    public static int getPixel(Context var0, int var1);

    public static boolean hitTest(View var0, MotionEvent var1);

    public static boolean isSimilarAspect(float var0, float var1);

    public static boolean isSimilarAspect(int var0, int var1, int var2, int var3);

    public static boolean isSimilarAspectRect(Rect var0, Rect var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class ScreenSize
    extends Enum<ScreenSize> {
        private static final /* synthetic */ ScreenSize[] $VALUES;
        public static final /* enum */ ScreenSize FULL_HD;
        public static final /* enum */ ScreenSize FWVGA;
        public static final /* enum */ ScreenSize HD;
        public static final /* enum */ ScreenSize HVGA;
        public static final /* enum */ ScreenSize QHD;
        public static final /* enum */ ScreenSize WUXGA;
        private final int mHeight;
        private final int mWidth;

        static;

        private ScreenSize(int var3, int var4);

        public static ScreenSize valueOf(String var0);

        public static ScreenSize[] values();

        public Rect getAsRect();

        public int getHeight();

        public int getWidth();
    }

}

