/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.internal.view;

import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.view.MenuItem;
import android.view.View;

public interface SupportMenuItem
extends MenuItem {
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;

    @Override
    public boolean collapseActionView();

    @Override
    public boolean expandActionView();

    @Override
    public View getActionView();

    public ActionProvider getSupportActionProvider();

    @Override
    public boolean isActionViewExpanded();

    @Override
    public MenuItem setActionView(int var1);

    @Override
    public MenuItem setActionView(View var1);

    @Override
    public void setShowAsAction(int var1);

    @Override
    public MenuItem setShowAsActionFlags(int var1);

    public SupportMenuItem setSupportActionProvider(ActionProvider var1);

    public SupportMenuItem setSupportOnActionExpandListener(MenuItemCompat.OnActionExpandListener var1);
}

