/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.ViewGroup;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MarginLayoutParamsCompat {
    static final MarginLayoutParamsCompatImpl IMPL;

    static;

    public MarginLayoutParamsCompat();

    public static int getLayoutDirection(ViewGroup.MarginLayoutParams var0);

    public static int getMarginEnd(ViewGroup.MarginLayoutParams var0);

    public static int getMarginStart(ViewGroup.MarginLayoutParams var0);

    public static boolean isMarginRelative(ViewGroup.MarginLayoutParams var0);

    public static void resolveLayoutDirection(ViewGroup.MarginLayoutParams var0, int var1);

    public static void setLayoutDirection(ViewGroup.MarginLayoutParams var0, int var1);

    public static void setMarginEnd(ViewGroup.MarginLayoutParams var0, int var1);

    public static void setMarginStart(ViewGroup.MarginLayoutParams var0, int var1);

    static interface MarginLayoutParamsCompatImpl {
        public int getLayoutDirection(ViewGroup.MarginLayoutParams var1);

        public int getMarginEnd(ViewGroup.MarginLayoutParams var1);

        public int getMarginStart(ViewGroup.MarginLayoutParams var1);

        public boolean isMarginRelative(ViewGroup.MarginLayoutParams var1);

        public void resolveLayoutDirection(ViewGroup.MarginLayoutParams var1, int var2);

        public void setLayoutDirection(ViewGroup.MarginLayoutParams var1, int var2);

        public void setMarginEnd(ViewGroup.MarginLayoutParams var1, int var2);

        public void setMarginStart(ViewGroup.MarginLayoutParams var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class MarginLayoutParamsCompatImplBase
    implements MarginLayoutParamsCompatImpl {
        MarginLayoutParamsCompatImplBase();

        @Override
        public int getLayoutDirection(ViewGroup.MarginLayoutParams var1);

        @Override
        public int getMarginEnd(ViewGroup.MarginLayoutParams var1);

        @Override
        public int getMarginStart(ViewGroup.MarginLayoutParams var1);

        @Override
        public boolean isMarginRelative(ViewGroup.MarginLayoutParams var1);

        @Override
        public void resolveLayoutDirection(ViewGroup.MarginLayoutParams var1, int var2);

        @Override
        public void setLayoutDirection(ViewGroup.MarginLayoutParams var1, int var2);

        @Override
        public void setMarginEnd(ViewGroup.MarginLayoutParams var1, int var2);

        @Override
        public void setMarginStart(ViewGroup.MarginLayoutParams var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class MarginLayoutParamsCompatImplJbMr1
    implements MarginLayoutParamsCompatImpl {
        MarginLayoutParamsCompatImplJbMr1();

        @Override
        public int getLayoutDirection(ViewGroup.MarginLayoutParams var1);

        @Override
        public int getMarginEnd(ViewGroup.MarginLayoutParams var1);

        @Override
        public int getMarginStart(ViewGroup.MarginLayoutParams var1);

        @Override
        public boolean isMarginRelative(ViewGroup.MarginLayoutParams var1);

        @Override
        public void resolveLayoutDirection(ViewGroup.MarginLayoutParams var1, int var2);

        @Override
        public void setLayoutDirection(ViewGroup.MarginLayoutParams var1, int var2);

        @Override
        public void setMarginEnd(ViewGroup.MarginLayoutParams var1, int var2);

        @Override
        public void setMarginStart(ViewGroup.MarginLayoutParams var1, int var2);
    }

}

