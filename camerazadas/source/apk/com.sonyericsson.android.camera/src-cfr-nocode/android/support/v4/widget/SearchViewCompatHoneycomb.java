/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.view.View;
import android.widget.SearchView;

class SearchViewCompatHoneycomb {
    SearchViewCompatHoneycomb();

    public static CharSequence getQuery(View var0);

    public static boolean isIconified(View var0);

    public static boolean isQueryRefinementEnabled(View var0);

    public static boolean isSubmitButtonEnabled(View var0);

    public static Object newOnCloseListener(OnCloseListenerCompatBridge var0);

    public static Object newOnQueryTextListener(OnQueryTextListenerCompatBridge var0);

    public static View newSearchView(Context var0);

    public static void setIconified(View var0, boolean var1);

    public static void setMaxWidth(View var0, int var1);

    public static void setOnCloseListener(Object var0, Object var1);

    public static void setOnQueryTextListener(Object var0, Object var1);

    public static void setQuery(View var0, CharSequence var1, boolean var2);

    public static void setQueryHint(View var0, CharSequence var1);

    public static void setQueryRefinementEnabled(View var0, boolean var1);

    public static void setSearchableInfo(View var0, ComponentName var1);

    public static void setSubmitButtonEnabled(View var0, boolean var1);

    static interface OnCloseListenerCompatBridge {
        public boolean onClose();
    }

    static interface OnQueryTextListenerCompatBridge {
        public boolean onQueryTextChange(String var1);

        public boolean onQueryTextSubmit(String var1);
    }

}

