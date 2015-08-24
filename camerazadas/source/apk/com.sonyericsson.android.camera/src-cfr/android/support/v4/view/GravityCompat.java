/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build;
import android.support.v4.view.GravityCompatJellybeanMr1;
import android.view.Gravity;

public class GravityCompat {
    public static final int END = 8388613;
    static final GravityCompatImpl IMPL;
    public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
    public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
    public static final int START = 8388611;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            IMPL = new GravityCompatImplJellybeanMr1();
            return;
        }
        IMPL = new GravityCompatImplBase();
    }

    public static void apply(int n, int n2, int n3, Rect rect, int n4, int n5, Rect rect2, int n6) {
        IMPL.apply(n, n2, n3, rect, n4, n5, rect2, n6);
    }

    public static void apply(int n, int n2, int n3, Rect rect, Rect rect2, int n4) {
        IMPL.apply(n, n2, n3, rect, rect2, n4);
    }

    public static void applyDisplay(int n, Rect rect, Rect rect2, int n2) {
        IMPL.applyDisplay(n, rect, rect2, n2);
    }

    public static int getAbsoluteGravity(int n, int n2) {
        return IMPL.getAbsoluteGravity(n, n2);
    }

    static interface GravityCompatImpl {
        public void apply(int var1, int var2, int var3, Rect var4, int var5, int var6, Rect var7, int var8);

        public void apply(int var1, int var2, int var3, Rect var4, Rect var5, int var6);

        public void applyDisplay(int var1, Rect var2, Rect var3, int var4);

        public int getAbsoluteGravity(int var1, int var2);
    }

    static class GravityCompatImplBase
    implements GravityCompatImpl {
        GravityCompatImplBase() {
        }

        @Override
        public void apply(int n, int n2, int n3, Rect rect, int n4, int n5, Rect rect2, int n6) {
            Gravity.apply(n, n2, n3, rect, n4, n5, rect2);
        }

        @Override
        public void apply(int n, int n2, int n3, Rect rect, Rect rect2, int n4) {
            Gravity.apply(n, n2, n3, rect, rect2);
        }

        @Override
        public void applyDisplay(int n, Rect rect, Rect rect2, int n2) {
            Gravity.applyDisplay(n, rect, rect2);
        }

        @Override
        public int getAbsoluteGravity(int n, int n2) {
            return -8388609 & n;
        }
    }

    static class GravityCompatImplJellybeanMr1
    implements GravityCompatImpl {
        GravityCompatImplJellybeanMr1() {
        }

        @Override
        public void apply(int n, int n2, int n3, Rect rect, int n4, int n5, Rect rect2, int n6) {
            GravityCompatJellybeanMr1.apply(n, n2, n3, rect, n4, n5, rect2, n6);
        }

        @Override
        public void apply(int n, int n2, int n3, Rect rect, Rect rect2, int n4) {
            GravityCompatJellybeanMr1.apply(n, n2, n3, rect, rect2, n4);
        }

        @Override
        public void applyDisplay(int n, Rect rect, Rect rect2, int n2) {
            GravityCompatJellybeanMr1.applyDisplay(n, rect, rect2, n2);
        }

        @Override
        public int getAbsoluteGravity(int n, int n2) {
            return GravityCompatJellybeanMr1.getAbsoluteGravity(n, n2);
        }
    }

}

