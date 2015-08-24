/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/*
 * Exception performing whole class analysis.
 */
public abstract class ActionProvider {
    private static final String TAG = "ActionProvider(support)";
    private final Context mContext;
    private SubUiVisibilityListener mSubUiVisibilityListener;
    private VisibilityListener mVisibilityListener;

    public ActionProvider(Context var1);

    public Context getContext();

    public boolean hasSubMenu();

    public boolean isVisible();

    public abstract View onCreateActionView();

    public View onCreateActionView(MenuItem var1);

    public boolean onPerformDefaultAction();

    public void onPrepareSubMenu(SubMenu var1);

    public boolean overridesItemVisibility();

    public void refreshVisibility();

    public void setSubUiVisibilityListener(SubUiVisibilityListener var1);

    public void setVisibilityListener(VisibilityListener var1);

    public void subUiVisibilityChanged(boolean var1);

    public static interface SubUiVisibilityListener {
        public void onSubUiVisibilityChanged(boolean var1);
    }

    public static interface VisibilityListener {
        public void onActionProviderVisibilityChanged(boolean var1);
    }

}

