/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.view.View;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ListPopupWindowCompat {
    static final ListPopupWindowImpl IMPL;

    static;

    private ListPopupWindowCompat();

    public static View.OnTouchListener createDragToOpenListener(Object var0, View var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BaseListPopupWindowImpl
    implements ListPopupWindowImpl {
        BaseListPopupWindowImpl();

        @Override
        public View.OnTouchListener createDragToOpenListener(Object var1, View var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class KitKatListPopupWindowImpl
    extends BaseListPopupWindowImpl {
        KitKatListPopupWindowImpl();

        @Override
        public View.OnTouchListener createDragToOpenListener(Object var1, View var2);
    }

    static interface ListPopupWindowImpl {
        public View.OnTouchListener createDragToOpenListener(Object var1, View var2);
    }

}

