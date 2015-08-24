/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ViewParentCompat {
    static final ViewParentCompatImpl IMPL;

    static;

    private ViewParentCompat();

    public static boolean requestSendAccessibilityEvent(ViewParent var0, View var1, AccessibilityEvent var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ViewParentCompatICSImpl
    extends ViewParentCompatStubImpl {
        ViewParentCompatICSImpl();

        @Override
        public boolean requestSendAccessibilityEvent(ViewParent var1, View var2, AccessibilityEvent var3);
    }

    static interface ViewParentCompatImpl {
        public boolean requestSendAccessibilityEvent(ViewParent var1, View var2, AccessibilityEvent var3);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ViewParentCompatStubImpl
    implements ViewParentCompatImpl {
        ViewParentCompatStubImpl();

        @Override
        public boolean requestSendAccessibilityEvent(ViewParent var1, View var2, AccessibilityEvent var3);
    }

}

