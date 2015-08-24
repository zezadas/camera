/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;

class ActionBarDrawerToggleHoneycomb {
    private static final String TAG = "ActionBarDrawerToggleHoneycomb";
    private static final int[] THEME_ATTRS = new int[]{16843531};

    ActionBarDrawerToggleHoneycomb() {
    }

    public static Drawable getThemeUpIndicator(Activity object) {
        object = object.obtainStyledAttributes(THEME_ATTRS);
        Drawable drawable = object.getDrawable(0);
        object.recycle();
        return drawable;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Object setActionBarDescription(Object object, Activity object2, int n) {
        Object object3 = object;
        if (object == null) {
            object3 = new SetIndicatorInfo((Activity)object2);
        }
        object = (SetIndicatorInfo)object3;
        if (object.setHomeAsUpIndicator == null) return object3;
        try {
            object2 = object2.getActionBar();
            object.setHomeActionContentDescription.invoke(object2, n);
            if (Build.VERSION.SDK_INT > 19) return object3;
            object2.setSubtitle(object2.getSubtitle());
        }
        catch (Exception exception) {
            Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set content description via JB-MR2 API", exception);
            return object3;
        }
        return object3;
    }

    public static Object setActionBarUpIndicator(Object object, Activity object2, Drawable drawable, int n) {
        Object object3 = object;
        if (object == null) {
            object3 = new SetIndicatorInfo((Activity)object2);
        }
        object = (SetIndicatorInfo)object3;
        if (object.setHomeAsUpIndicator != null) {
            try {
                object2 = object2.getActionBar();
                object.setHomeAsUpIndicator.invoke(object2, drawable);
                object.setHomeActionContentDescription.invoke(object2, n);
                return object3;
            }
            catch (Exception var0_1) {
                Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator via JB-MR2 API", var0_1);
                return object3;
            }
        }
        if (object.upIndicatorView != null) {
            object.upIndicatorView.setImageDrawable(drawable);
            return object3;
        }
        Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator");
        return object3;
    }

    private static class SetIndicatorInfo {
        public Method setHomeActionContentDescription;
        public Method setHomeAsUpIndicator;
        public ImageView upIndicatorView;

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        SetIndicatorInfo(Activity activity) {
            try {
                this.setHomeAsUpIndicator = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.setHomeActionContentDescription = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
                return;
            }
            catch (NoSuchMethodException var2_6) {
                void var1_5;
                ViewGroup viewGroup;
                View view = activity.findViewById(16908332);
                if (view == null || (viewGroup = (ViewGroup)view.getParent()).getChildCount() != 2) return;
                View view2 = viewGroup.getChildAt(0);
                View view3 = viewGroup.getChildAt(1);
                if (view2.getId() == 16908332) {
                    View view4 = view3;
                }
                if (!(var1_5 instanceof ImageView)) return;
                this.upIndicatorView = (ImageView)var1_5;
                return;
            }
        }
    }

}

