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
    AccessibilityDelegateCompatJellyBean();

    public static Object getAccessibilityNodeProvider(Object var0, View var1);

    public static Object newAccessibilityDelegateBridge(AccessibilityDelegateBridgeJellyBean var0);

    public static boolean performAccessibilityAction(Object var0, View var1, int var2, Bundle var3);

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

