/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.view.View;
import android.widget.SearchView;

class SearchViewCompatIcs {
    SearchViewCompatIcs();

    public static View newSearchView(Context var0);

    public static void setImeOptions(View var0, int var1);

    public static void setInputType(View var0, int var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class MySearchView
    extends SearchView {
        public MySearchView(Context var1);

        @Override
        public void onActionViewCollapsed();
    }

}

