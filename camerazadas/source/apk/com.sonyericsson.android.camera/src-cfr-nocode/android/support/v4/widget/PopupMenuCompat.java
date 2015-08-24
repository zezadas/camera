/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.view.View;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PopupMenuCompat {
    static final PopupMenuImpl IMPL;

    static;

    private PopupMenuCompat();

    public static View.OnTouchListener getDragToOpenListener(Object var0);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BasePopupMenuImpl
    implements PopupMenuImpl {
        BasePopupMenuImpl();

        @Override
        public View.OnTouchListener getDragToOpenListener(Object var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class KitKatPopupMenuImpl
    extends BasePopupMenuImpl {
        KitKatPopupMenuImpl();

        @Override
        public View.OnTouchListener getDragToOpenListener(Object var1);
    }

    static interface PopupMenuImpl {
        public View.OnTouchListener getDragToOpenListener(Object var1);
    }

}

