/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompatIcs;
import android.view.MenuItem;
import android.view.View;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MenuItemCompat {
    static final MenuVersionImpl IMPL;
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;
    private static final String TAG = "MenuItemCompat";

    static;

    public MenuItemCompat();

    public static boolean collapseActionView(MenuItem var0);

    public static boolean expandActionView(MenuItem var0);

    public static ActionProvider getActionProvider(MenuItem var0);

    public static View getActionView(MenuItem var0);

    public static boolean isActionViewExpanded(MenuItem var0);

    public static MenuItem setActionProvider(MenuItem var0, ActionProvider var1);

    public static MenuItem setActionView(MenuItem var0, int var1);

    public static MenuItem setActionView(MenuItem var0, View var1);

    public static MenuItem setOnActionExpandListener(MenuItem var0, OnActionExpandListener var1);

    public static void setShowAsAction(MenuItem var0, int var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BaseMenuVersionImpl
    implements MenuVersionImpl {
        BaseMenuVersionImpl();

        @Override
        public boolean collapseActionView(MenuItem var1);

        @Override
        public boolean expandActionView(MenuItem var1);

        @Override
        public View getActionView(MenuItem var1);

        @Override
        public boolean isActionViewExpanded(MenuItem var1);

        @Override
        public MenuItem setActionView(MenuItem var1, int var2);

        @Override
        public MenuItem setActionView(MenuItem var1, View var2);

        @Override
        public MenuItem setOnActionExpandListener(MenuItem var1, OnActionExpandListener var2);

        @Override
        public void setShowAsAction(MenuItem var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class HoneycombMenuVersionImpl
    implements MenuVersionImpl {
        HoneycombMenuVersionImpl();

        @Override
        public boolean collapseActionView(MenuItem var1);

        @Override
        public boolean expandActionView(MenuItem var1);

        @Override
        public View getActionView(MenuItem var1);

        @Override
        public boolean isActionViewExpanded(MenuItem var1);

        @Override
        public MenuItem setActionView(MenuItem var1, int var2);

        @Override
        public MenuItem setActionView(MenuItem var1, View var2);

        @Override
        public MenuItem setOnActionExpandListener(MenuItem var1, OnActionExpandListener var2);

        @Override
        public void setShowAsAction(MenuItem var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class IcsMenuVersionImpl
    extends HoneycombMenuVersionImpl {
        IcsMenuVersionImpl();

        @Override
        public boolean collapseActionView(MenuItem var1);

        @Override
        public boolean expandActionView(MenuItem var1);

        @Override
        public boolean isActionViewExpanded(MenuItem var1);

        @Override
        public MenuItem setOnActionExpandListener(MenuItem var1, OnActionExpandListener var2);

    }

    static interface MenuVersionImpl {
        public boolean collapseActionView(MenuItem var1);

        public boolean expandActionView(MenuItem var1);

        public View getActionView(MenuItem var1);

        public boolean isActionViewExpanded(MenuItem var1);

        public MenuItem setActionView(MenuItem var1, int var2);

        public MenuItem setActionView(MenuItem var1, View var2);

        public MenuItem setOnActionExpandListener(MenuItem var1, OnActionExpandListener var2);

        public void setShowAsAction(MenuItem var1, int var2);
    }

    public static interface OnActionExpandListener {
        public boolean onMenuItemActionCollapse(MenuItem var1);

        public boolean onMenuItemActionExpand(MenuItem var1);
    }

}

