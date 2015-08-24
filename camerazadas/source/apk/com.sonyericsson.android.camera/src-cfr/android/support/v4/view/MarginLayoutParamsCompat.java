/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.os.Build;
import android.support.v4.view.MarginLayoutParamsCompatJellybeanMr1;
import android.view.ViewGroup;

public class MarginLayoutParamsCompat {
    static final MarginLayoutParamsCompatImpl IMPL;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            IMPL = new MarginLayoutParamsCompatImplJbMr1();
            return;
        }
        IMPL = new MarginLayoutParamsCompatImplBase();
    }

    public static int getLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return IMPL.getLayoutDirection(marginLayoutParams);
    }

    public static int getMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return IMPL.getMarginEnd(marginLayoutParams);
    }

    public static int getMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return IMPL.getMarginStart(marginLayoutParams);
    }

    public static boolean isMarginRelative(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return IMPL.isMarginRelative(marginLayoutParams);
    }

    public static void resolveLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
        IMPL.resolveLayoutDirection(marginLayoutParams, n);
    }

    public static void setLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
        IMPL.setLayoutDirection(marginLayoutParams, n);
    }

    public static void setMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
        IMPL.setMarginEnd(marginLayoutParams, n);
    }

    public static void setMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
        IMPL.setMarginStart(marginLayoutParams, n);
    }

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

    static class MarginLayoutParamsCompatImplBase
    implements MarginLayoutParamsCompatImpl {
        MarginLayoutParamsCompatImplBase() {
        }

        @Override
        public int getLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return 0;
        }

        @Override
        public int getMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.rightMargin;
        }

        @Override
        public int getMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.leftMargin;
        }

        @Override
        public boolean isMarginRelative(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return false;
        }

        @Override
        public void resolveLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
        }

        @Override
        public void setLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
        }

        @Override
        public void setMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
            marginLayoutParams.rightMargin = n;
        }

        @Override
        public void setMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
            marginLayoutParams.leftMargin = n;
        }
    }

    static class MarginLayoutParamsCompatImplJbMr1
    implements MarginLayoutParamsCompatImpl {
        MarginLayoutParamsCompatImplJbMr1() {
        }

        @Override
        public int getLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.getLayoutDirection(marginLayoutParams);
        }

        @Override
        public int getMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.getMarginEnd(marginLayoutParams);
        }

        @Override
        public int getMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.getMarginStart(marginLayoutParams);
        }

        @Override
        public boolean isMarginRelative(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.isMarginRelative(marginLayoutParams);
        }

        @Override
        public void resolveLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
            MarginLayoutParamsCompatJellybeanMr1.resolveLayoutDirection(marginLayoutParams, n);
        }

        @Override
        public void setLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
            MarginLayoutParamsCompatJellybeanMr1.setLayoutDirection(marginLayoutParams, n);
        }

        @Override
        public void setMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
            MarginLayoutParamsCompatJellybeanMr1.setMarginEnd(marginLayoutParams, n);
        }

        @Override
        public void setMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams, int n) {
            MarginLayoutParamsCompatJellybeanMr1.setMarginStart(marginLayoutParams, n);
        }
    }

}

