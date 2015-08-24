/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.graphics.Rect;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class GravityCompat {
    public static final int END = 8388613;
    static final GravityCompatImpl IMPL;
    public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
    public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
    public static final int START = 8388611;

    static;

    public GravityCompat();

    public static void apply(int var0, int var1, int var2, Rect var3, int var4, int var5, Rect var6, int var7);

    public static void apply(int var0, int var1, int var2, Rect var3, Rect var4, int var5);

    public static void applyDisplay(int var0, Rect var1, Rect var2, int var3);

    public static int getAbsoluteGravity(int var0, int var1);

    static interface GravityCompatImpl {
        public void apply(int var1, int var2, int var3, Rect var4, int var5, int var6, Rect var7, int var8);

        public void apply(int var1, int var2, int var3, Rect var4, Rect var5, int var6);

        public void applyDisplay(int var1, Rect var2, Rect var3, int var4);

        public int getAbsoluteGravity(int var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class GravityCompatImplBase
    implements GravityCompatImpl {
        GravityCompatImplBase();

        @Override
        public void apply(int var1, int var2, int var3, Rect var4, int var5, int var6, Rect var7, int var8);

        @Override
        public void apply(int var1, int var2, int var3, Rect var4, Rect var5, int var6);

        @Override
        public void applyDisplay(int var1, Rect var2, Rect var3, int var4);

        @Override
        public int getAbsoluteGravity(int var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class GravityCompatImplJellybeanMr1
    implements GravityCompatImpl {
        GravityCompatImplJellybeanMr1();

        @Override
        public void apply(int var1, int var2, int var3, Rect var4, int var5, int var6, Rect var7, int var8);

        @Override
        public void apply(int var1, int var2, int var3, Rect var4, Rect var5, int var6);

        @Override
        public void applyDisplay(int var1, Rect var2, Rect var3, int var4);

        @Override
        public int getAbsoluteGravity(int var1, int var2);
    }

}

