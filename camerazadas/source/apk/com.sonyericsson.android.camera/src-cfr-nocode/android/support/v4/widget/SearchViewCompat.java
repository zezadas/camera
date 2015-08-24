/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.support.v4.widget.SearchViewCompatHoneycomb;
import android.view.View;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SearchViewCompat {
    private static final SearchViewCompatImpl IMPL;

    static;

    private SearchViewCompat(Context var1);

    static /* synthetic */ SearchViewCompatImpl access$000();

    public static CharSequence getQuery(View var0);

    public static boolean isIconified(View var0);

    public static boolean isQueryRefinementEnabled(View var0);

    public static boolean isSubmitButtonEnabled(View var0);

    public static View newSearchView(Context var0);

    public static void setIconified(View var0, boolean var1);

    public static void setImeOptions(View var0, int var1);

    public static void setInputType(View var0, int var1);

    public static void setMaxWidth(View var0, int var1);

    public static void setOnCloseListener(View var0, OnCloseListenerCompat var1);

    public static void setOnQueryTextListener(View var0, OnQueryTextListenerCompat var1);

    public static void setQuery(View var0, CharSequence var1, boolean var2);

    public static void setQueryHint(View var0, CharSequence var1);

    public static void setQueryRefinementEnabled(View var0, boolean var1);

    public static void setSearchableInfo(View var0, ComponentName var1);

    public static void setSubmitButtonEnabled(View var0, boolean var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static abstract class OnCloseListenerCompat {
        final Object mListener;

        public OnCloseListenerCompat();

        public boolean onClose();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static abstract class OnQueryTextListenerCompat {
        final Object mListener;

        public OnQueryTextListenerCompat();

        public boolean onQueryTextChange(String var1);

        public boolean onQueryTextSubmit(String var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class SearchViewCompatHoneycombImpl
    extends SearchViewCompatStubImpl {
        SearchViewCompatHoneycombImpl();

        @Override
        public CharSequence getQuery(View var1);

        @Override
        public boolean isIconified(View var1);

        @Override
        public boolean isQueryRefinementEnabled(View var1);

        @Override
        public boolean isSubmitButtonEnabled(View var1);

        @Override
        public Object newOnCloseListener(OnCloseListenerCompat var1);

        @Override
        public Object newOnQueryTextListener(OnQueryTextListenerCompat var1);

        @Override
        public View newSearchView(Context var1);

        @Override
        public void setIconified(View var1, boolean var2);

        @Override
        public void setMaxWidth(View var1, int var2);

        @Override
        public void setOnCloseListener(Object var1, Object var2);

        @Override
        public void setOnQueryTextListener(Object var1, Object var2);

        @Override
        public void setQuery(View var1, CharSequence var2, boolean var3);

        @Override
        public void setQueryHint(View var1, CharSequence var2);

        @Override
        public void setQueryRefinementEnabled(View var1, boolean var2);

        @Override
        public void setSearchableInfo(View var1, ComponentName var2);

        @Override
        public void setSubmitButtonEnabled(View var1, boolean var2);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class SearchViewCompatIcsImpl
    extends SearchViewCompatHoneycombImpl {
        SearchViewCompatIcsImpl();

        @Override
        public View newSearchView(Context var1);

        @Override
        public void setImeOptions(View var1, int var2);

        @Override
        public void setInputType(View var1, int var2);
    }

    static interface SearchViewCompatImpl {
        public CharSequence getQuery(View var1);

        public boolean isIconified(View var1);

        public boolean isQueryRefinementEnabled(View var1);

        public boolean isSubmitButtonEnabled(View var1);

        public Object newOnCloseListener(OnCloseListenerCompat var1);

        public Object newOnQueryTextListener(OnQueryTextListenerCompat var1);

        public View newSearchView(Context var1);

        public void setIconified(View var1, boolean var2);

        public void setImeOptions(View var1, int var2);

        public void setInputType(View var1, int var2);

        public void setMaxWidth(View var1, int var2);

        public void setOnCloseListener(Object var1, Object var2);

        public void setOnQueryTextListener(Object var1, Object var2);

        public void setQuery(View var1, CharSequence var2, boolean var3);

        public void setQueryHint(View var1, CharSequence var2);

        public void setQueryRefinementEnabled(View var1, boolean var2);

        public void setSearchableInfo(View var1, ComponentName var2);

        public void setSubmitButtonEnabled(View var1, boolean var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class SearchViewCompatStubImpl
    implements SearchViewCompatImpl {
        SearchViewCompatStubImpl();

        @Override
        public CharSequence getQuery(View var1);

        @Override
        public boolean isIconified(View var1);

        @Override
        public boolean isQueryRefinementEnabled(View var1);

        @Override
        public boolean isSubmitButtonEnabled(View var1);

        @Override
        public Object newOnCloseListener(OnCloseListenerCompat var1);

        @Override
        public Object newOnQueryTextListener(OnQueryTextListenerCompat var1);

        @Override
        public View newSearchView(Context var1);

        @Override
        public void setIconified(View var1, boolean var2);

        @Override
        public void setImeOptions(View var1, int var2);

        @Override
        public void setInputType(View var1, int var2);

        @Override
        public void setMaxWidth(View var1, int var2);

        @Override
        public void setOnCloseListener(Object var1, Object var2);

        @Override
        public void setOnQueryTextListener(Object var1, Object var2);

        @Override
        public void setQuery(View var1, CharSequence var2, boolean var3);

        @Override
        public void setQueryHint(View var1, CharSequence var2);

        @Override
        public void setQueryRefinementEnabled(View var1, boolean var2);

        @Override
        public void setSearchableInfo(View var1, ComponentName var2);

        @Override
        public void setSubmitButtonEnabled(View var1, boolean var2);
    }

}

