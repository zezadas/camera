/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.view.View;
import android.widget.ListPopupWindow;

class ListPopupWindowCompatKitKat {
    ListPopupWindowCompatKitKat() {
    }

    public static View.OnTouchListener createDragToOpenListener(Object object, View view) {
        return ((ListPopupWindow)object).createDragToOpenListener(view);
    }
}

