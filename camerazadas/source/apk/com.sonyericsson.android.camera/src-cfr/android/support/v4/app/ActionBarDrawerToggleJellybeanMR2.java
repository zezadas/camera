/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;

class ActionBarDrawerToggleJellybeanMR2 {
    private static final String TAG = "ActionBarDrawerToggleImplJellybeanMR2";
    private static final int[] THEME_ATTRS = new int[]{16843531};

    ActionBarDrawerToggleJellybeanMR2() {
    }

    public static Drawable getThemeUpIndicator(Activity object) {
        object = object.obtainStyledAttributes(THEME_ATTRS);
        Drawable drawable = object.getDrawable(0);
        object.recycle();
        return drawable;
    }

    public static Object setActionBarDescription(Object object, Activity object2, int n) {
        if ((object2 = object2.getActionBar()) != null) {
            object2.setHomeActionContentDescription(n);
        }
        return object;
    }

    public static Object setActionBarUpIndicator(Object object, Activity object2, Drawable drawable, int n) {
        if ((object2 = object2.getActionBar()) != null) {
            object2.setHomeAsUpIndicator(drawable);
            object2.setHomeActionContentDescription(n);
        }
        return object;
    }
}

