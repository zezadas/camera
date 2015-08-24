/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

class AccessibilityDelegateCompatIcs {
    AccessibilityDelegateCompatIcs() {
    }

    public static boolean dispatchPopulateAccessibilityEvent(Object object, View view, AccessibilityEvent accessibilityEvent) {
        return ((View.AccessibilityDelegate)object).dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public static Object newAccessibilityDelegateBridge(final AccessibilityDelegateBridge accessibilityDelegateBridge) {
        return new View.AccessibilityDelegate(){

            @Override
            public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                return accessibilityDelegateBridge.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }

            @Override
            public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                accessibilityDelegateBridge.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }

            @Override
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                accessibilityDelegateBridge.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            }

            @Override
            public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                accessibilityDelegateBridge.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }

            @Override
            public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                return accessibilityDelegateBridge.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }

            @Override
            public void sendAccessibilityEvent(View view, int n) {
                accessibilityDelegateBridge.sendAccessibilityEvent(view, n);
            }

            @Override
            public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                accessibilityDelegateBridge.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        };
    }

    public static Object newAccessibilityDelegateDefaultImpl() {
        return new View.AccessibilityDelegate();
    }

    public static void onInitializeAccessibilityEvent(Object object, View view, AccessibilityEvent accessibilityEvent) {
        ((View.AccessibilityDelegate)object).onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public static void onInitializeAccessibilityNodeInfo(Object object, View view, Object object2) {
        ((View.AccessibilityDelegate)object).onInitializeAccessibilityNodeInfo(view, (AccessibilityNodeInfo)object2);
    }

    public static void onPopulateAccessibilityEvent(Object object, View view, AccessibilityEvent accessibilityEvent) {
        ((View.AccessibilityDelegate)object).onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public static boolean onRequestSendAccessibilityEvent(Object object, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return ((View.AccessibilityDelegate)object).onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public static void sendAccessibilityEvent(Object object, View view, int n) {
        ((View.AccessibilityDelegate)object).sendAccessibilityEvent(view, n);
    }

    public static void sendAccessibilityEventUnchecked(Object object, View view, AccessibilityEvent accessibilityEvent) {
        ((View.AccessibilityDelegate)object).sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

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

