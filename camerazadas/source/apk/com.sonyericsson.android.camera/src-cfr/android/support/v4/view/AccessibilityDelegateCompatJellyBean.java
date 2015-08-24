/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

class AccessibilityDelegateCompatJellyBean {
    AccessibilityDelegateCompatJellyBean() {
    }

    public static Object getAccessibilityNodeProvider(Object object, View view) {
        return ((View.AccessibilityDelegate)object).getAccessibilityNodeProvider(view);
    }

    public static Object newAccessibilityDelegateBridge(final AccessibilityDelegateBridgeJellyBean accessibilityDelegateBridgeJellyBean) {
        return new View.AccessibilityDelegate(){

            @Override
            public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                return accessibilityDelegateBridgeJellyBean.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }

            @Override
            public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
                return (AccessibilityNodeProvider)accessibilityDelegateBridgeJellyBean.getAccessibilityNodeProvider(view);
            }

            @Override
            public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                accessibilityDelegateBridgeJellyBean.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }

            @Override
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                accessibilityDelegateBridgeJellyBean.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            }

            @Override
            public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                accessibilityDelegateBridgeJellyBean.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }

            @Override
            public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                return accessibilityDelegateBridgeJellyBean.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }

            @Override
            public boolean performAccessibilityAction(View view, int n, Bundle bundle) {
                return accessibilityDelegateBridgeJellyBean.performAccessibilityAction(view, n, bundle);
            }

            @Override
            public void sendAccessibilityEvent(View view, int n) {
                accessibilityDelegateBridgeJellyBean.sendAccessibilityEvent(view, n);
            }

            @Override
            public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                accessibilityDelegateBridgeJellyBean.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        };
    }

    public static boolean performAccessibilityAction(Object object, View view, int n, Bundle bundle) {
        return ((View.AccessibilityDelegate)object).performAccessibilityAction(view, n, bundle);
    }

    public static interface AccessibilityDelegateBridgeJellyBean {
        public boolean dispatchPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

        public Object getAccessibilityNodeProvider(View var1);

        public void onInitializeAccessibilityEvent(View var1, AccessibilityEvent var2);

        public void onInitializeAccessibilityNodeInfo(View var1, Object var2);

        public void onPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

        public boolean onRequestSendAccessibilityEvent(ViewGroup var1, View var2, AccessibilityEvent var3);

        public boolean performAccessibilityAction(View var1, int var2, Bundle var3);

        public void sendAccessibilityEvent(View var1, int var2);

        public void sendAccessibilityEventUnchecked(View var1, AccessibilityEvent var2);
    }

}

