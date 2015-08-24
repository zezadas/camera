/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DrawableCompat {
    static final DrawableImpl IMPL;

    static;

    public DrawableCompat();

    public static boolean isAutoMirrored(Drawable var0);

    public static void jumpToCurrentState(Drawable var0);

    public static void setAutoMirrored(Drawable var0, boolean var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BaseDrawableImpl
    implements DrawableImpl {
        BaseDrawableImpl();

        @Override
        public boolean isAutoMirrored(Drawable var1);

        @Override
        public void jumpToCurrentState(Drawable var1);

        @Override
        public void setAutoMirrored(Drawable var1, boolean var2);
    }

    static interface DrawableImpl {
        public boolean isAutoMirrored(Drawable var1);

        public void jumpToCurrentState(Drawable var1);

        public void setAutoMirrored(Drawable var1, boolean var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class HoneycombDrawableImpl
    extends BaseDrawableImpl {
        HoneycombDrawableImpl();

        @Override
        public void jumpToCurrentState(Drawable var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class KitKatDrawableImpl
    extends HoneycombDrawableImpl {
        KitKatDrawableImpl();

        @Override
        public boolean isAutoMirrored(Drawable var1);

        @Override
        public void setAutoMirrored(Drawable var1, boolean var2);
    }

}

