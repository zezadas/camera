/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.graphics.drawable.DrawableCompatHoneycomb;
import android.support.v4.graphics.drawable.DrawableCompatKitKat;

public class DrawableCompat {
    static final DrawableImpl IMPL;

    static {
        int n = Build.VERSION.SDK_INT;
        if (n >= 19) {
            IMPL = new KitKatDrawableImpl();
            return;
        }
        if (n >= 11) {
            IMPL = new HoneycombDrawableImpl();
            return;
        }
        IMPL = new BaseDrawableImpl();
    }

    public static boolean isAutoMirrored(Drawable drawable) {
        return IMPL.isAutoMirrored(drawable);
    }

    public static void jumpToCurrentState(Drawable drawable) {
        IMPL.jumpToCurrentState(drawable);
    }

    public static void setAutoMirrored(Drawable drawable, boolean bl) {
        IMPL.setAutoMirrored(drawable, bl);
    }

    static class BaseDrawableImpl
    implements DrawableImpl {
        BaseDrawableImpl() {
        }

        @Override
        public boolean isAutoMirrored(Drawable drawable) {
            return false;
        }

        @Override
        public void jumpToCurrentState(Drawable drawable) {
        }

        @Override
        public void setAutoMirrored(Drawable drawable, boolean bl) {
        }
    }

    static interface DrawableImpl {
        public boolean isAutoMirrored(Drawable var1);

        public void jumpToCurrentState(Drawable var1);

        public void setAutoMirrored(Drawable var1, boolean var2);
    }

    static class HoneycombDrawableImpl
    extends BaseDrawableImpl {
        HoneycombDrawableImpl() {
        }

        @Override
        public void jumpToCurrentState(Drawable drawable) {
            DrawableCompatHoneycomb.jumpToCurrentState(drawable);
        }
    }

    static class KitKatDrawableImpl
    extends HoneycombDrawableImpl {
        KitKatDrawableImpl() {
        }

        @Override
        public boolean isAutoMirrored(Drawable drawable) {
            return DrawableCompatKitKat.isAutoMirrored(drawable);
        }

        @Override
        public void setAutoMirrored(Drawable drawable, boolean bl) {
            DrawableCompatKitKat.setAutoMirrored(drawable, bl);
        }
    }

}

