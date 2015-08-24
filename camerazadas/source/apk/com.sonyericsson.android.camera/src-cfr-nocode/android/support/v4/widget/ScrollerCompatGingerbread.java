/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.view.animation.Interpolator;

class ScrollerCompatGingerbread {
    ScrollerCompatGingerbread();

    public static void abortAnimation(Object var0);

    public static boolean computeScrollOffset(Object var0);

    public static Object createScroller(Context var0, Interpolator var1);

    public static void fling(Object var0, int var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8);

    public static void fling(Object var0, int var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9, int var10);

    public static int getCurrX(Object var0);

    public static int getCurrY(Object var0);

    public static int getFinalX(Object var0);

    public static int getFinalY(Object var0);

    public static boolean isFinished(Object var0);

    public static boolean isOverScrolled(Object var0);

    public static void notifyHorizontalEdgeReached(Object var0, int var1, int var2, int var3);

    public static void notifyVerticalEdgeReached(Object var0, int var1, int var2, int var3);

    public static void startScroll(Object var0, int var1, int var2, int var3, int var4);

    public static void startScroll(Object var0, int var1, int var2, int var3, int var4, int var5);
}

