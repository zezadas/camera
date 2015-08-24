/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;

public class ViewUtility {
    private static final float ASPECT_TOLERANCE = 0.001f;

    public static Point getCenter(Point point, Point point2) {
        return new Point((point.x + point2.x) / 2, (point.y + point2.y) / 2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Rect getEstimatedRealScreenRect(Context object) {
        int n;
        int n2;
        object = ((WindowManager)object.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        object.getSize(point);
        if (point.y < point.x) {
            n2 = point.x;
            n = point.y;
        } else {
            n2 = point.y;
            n = point.x;
        }
        object = null;
        int n3 = n2 + n;
        for (ScreenSize screenSize : ScreenSize.values()) {
            int n4 = Math.abs(n2 - screenSize.getWidth()) + Math.abs(n - screenSize.getHeight());
            int n5 = n3;
            if (n4 < n3) {
                n5 = n4;
                object = screenSize;
            }
            n3 = n5;
        }
        if (object == null) {
            throw new RuntimeException("getEstimatedRealScreenRect():[Not supported screen size.]");
        }
        return object.getAsRect();
    }

    public static int getPixel(Context context, int n) {
        return context.getResources().getDimensionPixelSize(n);
    }

    public static boolean hitTest(View view, MotionEvent motionEvent) {
        int[] arrn = new int[2];
        view.getLocationOnScreen(arrn);
        return new Rect(arrn[0], arrn[1], arrn[0] + view.getWidth(), arrn[1] + view.getHeight()).contains((int)motionEvent.getRawX(), (int)motionEvent.getRawY());
    }

    public static boolean isSimilarAspect(float f, float f2) {
        if (Math.abs(f - f2) <= 0.001f) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean isSimilarAspect(int n, int n2, int n3, int n4) {
        boolean bl = true;
        if (n < 1) return false;
        if (n2 < 1) return false;
        if (n3 < 1) return false;
        if (n4 < 1) {
            return false;
        }
        if (Math.abs((float)n / (float)n2 - (float)n3 / (float)n4) <= 0.001f) return bl;
        return false;
    }

    public static boolean isSimilarAspectRect(Rect rect, Rect rect2) {
        return ViewUtility.isSimilarAspect(rect.width(), rect.height(), rect2.width(), rect2.height());
    }

    private static enum ScreenSize {
        WUXGA(1920, 1200),
        FULL_HD(1920, 1080),
        HD(1280, 720),
        QHD(960, 540),
        FWVGA(854, 480),
        HVGA(640, 480);
        
        private final int mHeight;
        private final int mWidth;

        private ScreenSize(int n2, int n3) {
            this.mWidth = n2;
            this.mHeight = n3;
        }

        public Rect getAsRect() {
            return new Rect(0, 0, this.mWidth, this.mHeight);
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getWidth() {
            return this.mWidth;
        }
    }

}

