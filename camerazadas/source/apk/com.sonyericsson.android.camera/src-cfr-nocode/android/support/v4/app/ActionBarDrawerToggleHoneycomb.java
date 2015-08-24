/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class ActionBarDrawerToggleHoneycomb {
    private static final String TAG = "ActionBarDrawerToggleHoneycomb";
    private static final int[] THEME_ATTRS;

    static;

    ActionBarDrawerToggleHoneycomb();

    public static Drawable getThemeUpIndicator(Activity var0);

    public static Object setActionBarDescription(Object var0, Activity var1, int var2);

    public static Object setActionBarUpIndicator(Object var0, Activity var1, Drawable var2, int var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class SetIndicatorInfo {
        public Method setHomeActionContentDescription;
        public Method setHomeAsUpIndicator;
        public ImageView upIndicatorView;

        SetIndicatorInfo(Activity var1);
    }

}

