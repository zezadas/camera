/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.MenuItem;

class MenuItemCompatIcs {
    MenuItemCompatIcs();

    public static boolean collapseActionView(MenuItem var0);

    public static boolean expandActionView(MenuItem var0);

    public static boolean isActionViewExpanded(MenuItem var0);

    public static MenuItem setOnActionExpandListener(MenuItem var0, SupportActionExpandProxy var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class OnActionExpandListenerWrapper
    implements MenuItem.OnActionExpandListener {
        private SupportActionExpandProxy mWrapped;

        public OnActionExpandListenerWrapper(SupportActionExpandProxy var1);

        @Override
        public boolean onMenuItemActionCollapse(MenuItem var1);

        @Override
        public boolean onMenuItemActionExpand(MenuItem var1);
    }

    static interface SupportActionExpandProxy {
        public boolean onMenuItemActionCollapse(MenuItem var1);

        public boolean onMenuItemActionExpand(MenuItem var1);
    }

}

