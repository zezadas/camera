/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

class ViewCompatICS {
    ViewCompatICS() {
    }

    public static boolean canScrollHorizontally(View view, int n) {
        return view.canScrollHorizontally(n);
    }

    public static boolean canScrollVertically(View view, int n) {
        return view.canScrollVertically(n);
    }

    public static void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    public static void onInitializeAccessibilityNodeInfo(View view, Object object) {
        view.onInitializeAccessibilityNodeInfo((AccessibilityNodeInfo)object);
    }

    public static void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onPopulateAccessibilityEvent(accessibilityEvent);
    }

    public static void setAccessibilityDelegate(View view, Object object) {
        view.setAccessibilityDelegate((View.AccessibilityDelegate)object);
    }
}

