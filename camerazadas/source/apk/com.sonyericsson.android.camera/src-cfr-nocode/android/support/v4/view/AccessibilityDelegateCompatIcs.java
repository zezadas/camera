/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

class AccessibilityDelegateCompatIcs {
    AccessibilityDelegateCompatIcs();

    public static boolean dispatchPopulateAccessibilityEvent(Object var0, View var1, AccessibilityEvent var2);

    public static Object newAccessibilityDelegateBridge(AccessibilityDelegateBridge var0);

    public static Object newAccessibilityDelegateDefaultImpl();

    public static void onInitializeAccessibilityEvent(Object var0, View var1, AccessibilityEvent var2);

    public static void onInitializeAccessibilityNodeInfo(Object var0, View var1, Object var2);

    public static void onPopulateAccessibilityEvent(Object var0, View var1, AccessibilityEvent var2);

    public static boolean onRequestSendAccessibilityEvent(Object var0, ViewGroup var1, View var2, AccessibilityEvent var3);

    public static void sendAccessibilityEvent(Object var0, View var1, int var2);

    public static void sendAccessibilityEventUnchecked(Object var0, View var1, AccessibilityEvent var2);

    public static interface AccessibilityDelegateBridge {
        public boolean dispatchPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

        public void onInitializeAccessibilityEvent(View var1, AccessibilityEvent var2);

        public void onInitializeAccessibilityNodeInfo(View var1, Object var2);

        public void onPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

        public boolean onRequestSendAccessibilityEvent(ViewGroup var1, View var2, AccessibilityEvent var3);

        public void sendAccessibilityEvent(View var1, int var2);

        public void sendAccessibilityEventUnchecked(View var1, AccessibilityEvent var2);
    }

}

